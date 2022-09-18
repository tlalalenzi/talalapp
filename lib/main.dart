import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: homescreen()),
  );
}

class homescreen2 extends StatefulWidget {
  const homescreen2({Key? key}) : super(key: key);

  @override
  _homescreen2State createState() => _homescreen2State();
}

class _homescreen2State extends State<homescreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("حول"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Coded By Talal",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

int counter = 0;

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: Text("</>"),
      ),
      //  extendBody: TextFormField(decoration: const InputDecoration(hintText: Text("Enter Your email")),),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("talal@mail.com"),
              accountName: Text("talal"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              title: Text("الصفحة الرئيسية", style: TextStyle(fontSize: 20),),
              leading: Icon(Icons.home),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen()));},
            ),
            Divider(color: Colors.black,),
              ListTile(
                title: InkWell(child:Text("حول التطبيق", style: TextStyle(fontSize: 20),),),
                leading: Icon(Icons.info),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen2()));
                },
              ),
              
              
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Enter Your Email'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              
              };
              
              
            }
            
            
            
            
          ),
        ),
      ),
      )
    );
  }
}
