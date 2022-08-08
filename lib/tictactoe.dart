import 'package:flutter/material.dart';

class tictactoe extends StatefulWidget {
  const tictactoe({Key? key}) : super(key: key);

  @override
  State<tictactoe> createState() => _tictactoeState();
}

class _tictactoeState extends State<tictactoe> {
  int t=0,Y=0,X=0;
  String turn ="Y";
  List list=List.filled(9, "");
  String winner="";

  win(){
    if((list[0]=="Y" && list[1]=="Y" && list[2]=="Y")||
    (list[3]=="Y" && list[4]=="Y" && list[5]=="Y")||
    (list[6]=="Y" && list[7]=="Y" && list[8]=="Y")||
    (list[0]=="Y" && list[3]=="Y" && list[6]=="Y")||
    (list[1]=="Y" && list[4]=="Y" && list[7]=="Y")||
    (list[2]=="Y" && list[5]=="Y" && list[8]=="Y")||
    (list[0]=="Y" && list[4]=="Y" && list[8]=="Y")||
    (list[2]=="Y" && list[4]=="Y" && list[6]=="Y"))
    {
      winner = "Y";
    }
    else if((list[0]=="X" && list[1]=="X" && list[2]=="X")||
        (list[3]=="X" && list[4]=="X" && list[5]=="X")||
        (list[6]=="X" && list[7]=="X" && list[8]=="X")||
        (list[0]=="X" && list[3]=="X" && list[6]=="X")||
        (list[1]=="X" && list[4]=="X" && list[7]=="X")||
        (list[2]=="X" && list[5]=="X" && list[8]=="X")||
        (list[0]=="X" && list[4]=="X" && list[8]=="X")||
        (list[2]=="X" && list[4]=="X" && list[6]=="X"))
      {
        winner="X";
      }

  }

  changeval(int pos)
  {
    setState(() {
      if(list[pos]=="")
        {
          if(t%2==0)
            {
              list[pos]="Y";
              Y++;
              turn="X";
            }
          else
            {
              list[pos]="X";
              X++;
              turn="Y";
            }
          t++;
          win();
        }
      print(t);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tic Tac Toe"),
        backgroundColor: Colors.red,
        centerTitle: true,),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(onTap:() {changeval(0);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
                  borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),margin: EdgeInsets.all(2),child: Text("${list[0]}",style: TextStyle(fontSize: 40),),),)),
              Expanded(child: InkWell(onTap:() {changeval(1);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[1]}",style: TextStyle(fontSize: 40),),),)),
              Expanded(child: InkWell(onTap:() {changeval(2);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[2]}",style: TextStyle(fontSize: 40),),),)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(onTap:() {changeval(3);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[3]}",style: TextStyle(fontSize: 40),),),)),
              Expanded(child: InkWell(onTap:() {changeval(4);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[4]}",style: TextStyle(fontSize: 40),),),)),
              Expanded(child: InkWell(onTap:() {changeval(5);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[5]}",style: TextStyle(fontSize: 40),),),)),
            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: InkWell(onTap:() {changeval(6);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[6]}",style: TextStyle(fontSize: 40),),),)),
              Expanded(child: InkWell(onTap:() {changeval(7);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[7]}",style: TextStyle(fontSize: 40),),),)),
              Expanded(child: InkWell(onTap:() {changeval(8);}, child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),margin: EdgeInsets.all(2),child: Text("${list[8]}",style: TextStyle(fontSize: 40),),),)),
            ],
          )),


          Expanded(child: Row(
            children: [
              Expanded(child: Container(alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  margin: EdgeInsets.all(20),child: Text("Y=$Y",style: TextStyle(fontSize: 32),)),),
              Expanded(child: Container(alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  margin: EdgeInsets.all(20),child: Text("$turn turn",style: TextStyle(fontSize: 32),)),),
              Expanded(child: Container(alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  margin: EdgeInsets.all(20),child: Text("X=$X",style: TextStyle(fontSize: 32),))),
            ],
          )),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                margin: EdgeInsets.all(20),child: Text("Winner = $winner",style: TextStyle(fontSize: 32),),)),
            ],
          )),
        ],
      ),
    );
  }
}
