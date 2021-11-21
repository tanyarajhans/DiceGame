import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Center(child: Row(
      children: <Widget>[
        Expanded(
          child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: (){
             changeDiceFace();
            },
            ),
          ),
          ),
          Expanded(
          child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: (){
                changeDiceFace();
              },
             ),
            ),
          ),
        ],
      ),
    );
  }
}
