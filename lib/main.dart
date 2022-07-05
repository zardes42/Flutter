import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Image.asset('images/Ellipse1.png'),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(

        decoration: const BoxDecoration(

          color: Colors.white,
        ),


        child: Column(
          children:  [

            const Center(
              child: Text("Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),



              ),
            ),

            const SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage('images/Frame1.png'),
                  height: 120,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage('images/Frame2.png'),
                  height: 120,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()));
                },
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50)
                    )


                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(top:10.0,bottom:5.0),
                    child:Center(
                    child: Text('Sign up',
                      style:TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ) ,),
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25.0),
              child: GestureDetector(
                onTap : (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: Container(
                  height: 40,
                  decoration:const BoxDecoration(
                    color: Color(0x406e36a5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50)
                    )
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child :Center(

                  child: Text('Login',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.deepPurple,
                  ),),
                    ),
                  ),
                ),
              ),
            )




          ],



        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Image(image: AssetImage('images/Ellipse2.png'))
          ],
        ),

      ),
    );
  }
}


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/Ellipse1.png'),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(

          color: Colors.white,
        ),
        child: Column(
          children: [
            const Center(
              child: Text("Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),



              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,


              children: [
                Image(image: AssetImage('images/Frame3.png'),
                height: 200,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 50,
                child:  TextField(

        decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,color: Color(0xff6E36A5)),
                    hintText: 'Username',
                    filled: true,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    focusedBorder:OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    fillColor : Color(0x106E36A5) ,
        ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left :30.0,right: 30.0,bottom: 50.0),
              child: Container(
                height: 50,
                child:  TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Color(0xff6E36A5)),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Color(0xff6E36A5)),
                    hintText: 'Password',
                    filled: true,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    focusedBorder:OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    fillColor : Color(0x106E36A5) ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30.0,right: 30.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
                },
                child : Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.deepPurple,
                ),
                child: Center(
                  child: Text('Login',style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),),
                )
              ),)
            )

         ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            Image(image: AssetImage('images/Ellipse2.png'))
          ],
        ),

      ),
      
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/Ellipse1.png'),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(

          color: Colors.white,
        ),
        child: Column(
          children: [
            const Center(
              child: Text("Register",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),



              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,


              children: [
                Image(image: AssetImage('images/Frame2.png'),
                  height: 200,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:0.0,left:30.0,right:30.0),
              child: Container(
                height: 50,

                child:  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_sharp,color: Color(0xff6E36A5)),
                    hintText: 'Email',
                    filled: true,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    focusedBorder:OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    fillColor : Color(0x106E36A5) ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 50,
                child:  TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person,color: Color(0xff6E36A5)),
                    hintText: 'Username',
                    filled: true,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    focusedBorder:OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    fillColor : Color(0x106E36A5) ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left :30.0,right: 30.0,bottom: 50.0),
              child: Container(
                height: 50,
                child:  TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Color(0xff6E36A5)),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Color(0xff6E36A5)),
                    hintText: 'Password',
                    filled: true,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    focusedBorder:OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none),borderRadius: BorderRadius.circular(30.0),),
                    fillColor : Color(0x106E36A5) ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30.0,right: 30.0),
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text('Register',style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                    ),),
                  )
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Image(image: AssetImage('images/Ellipse2.png'))
          ],
        ),

      ),
    );
  }
}

class Dashboard extends StatelessWidget {
   Dashboard({Key? key}) : super(key: key);
bool value = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage('images/Ellipse1.png'),),


        elevation: 0.0,
        backgroundColor: Color(0x886E36A5),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.27,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0x886E36A5),


              ),
              child:  Column(
                children: [
                  Image(image: AssetImage('images/Ellipse3.png'),
                    height: 150,
                  ),
                  Text('Welcome Iyin',style: TextStyle(
                    fontSize: 25,
                  ),),

                ],

              )

            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0,top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Good Afternoon',style: TextStyle(
                    fontSize: 18,
                  ),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('images/Ellipse5.png'),
                height: 100,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Task List',style: TextStyle(
                    fontSize: 16,
                  ),)
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left :20.0, right: 50.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                BoxShadow(
                color: Colors.black,
                  offset: const Offset(
                    1.0,
                    1.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 0.1,
                ), //BoxShadow
                ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Daily Tasks',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                          Icon(Icons.add_circle_outline,
                            size: 20,
                            color: Colors.deepPurple,
                          )
                        ],
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(
                          value: true,
                          checkColor: Colors.deepPurple,
                          side: BorderSide.none,
                          shape: CircleBorder(),
                          activeColor:Colors.deepPurple ,



                          onChanged: (value) {

                            this.value = value!;
                          },
                        ),
                        Text('Learn programming language by 12',
                          style: TextStyle(
                            fontSize: 12,
                          ),)//Checkbox
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(
                          value: true,
                          checkColor: Colors.deepPurple,
                          side: BorderSide.none,
                          shape: CircleBorder(),
                          activeColor:Colors.deepPurple ,



                          onChanged: (value) {

                            this.value = value!;
                          },
                        ),
                        Text('Learn programming language by 12',
                          style: TextStyle(
                            fontSize: 12,
                          ),)//Checkbox
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(
                          value: true,
                          checkColor: Colors.deepPurple,
                          side: BorderSide.none,
                          shape: CircleBorder(),
                          activeColor:Colors.deepPurple ,



                          onChanged: (value) {

                            this.value = value!;
                          },
                        ),
                        Text('Learn programming language by 12',
                          style: TextStyle(
                            fontSize: 12,
                          ),)//Checkbox
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(
                          value: true,
                          checkColor: Colors.deepPurple,
                          side: BorderSide.none,
                          shape: CircleBorder(),
                          activeColor:Colors.deepPurple ,



                          onChanged: (value) {

                            this.value = value!;
                          },
                        ),
                        Text('Learn programming language by 12',
                          style: TextStyle(
                            fontSize: 12,
                          ),)//Checkbox
                      ],
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Image(image: AssetImage('images/Ellipse2.png'))
          ],
        ),

      ),
    );

  }
}
