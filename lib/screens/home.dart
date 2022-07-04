import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Good Morning",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: const BoxDecoration(
                  // color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text("2,000,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 42,
                                  // color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            TextButton(onPressed: null, child: Text("Add Money")),
                            TextButton(onPressed: null, child: Text("Save")),
                            TextButton(onPressed: null, child: Text("Borrow"))
                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
          ),
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Recent Transactions"),
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card_sharp), label: "Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Budget")
        ],
      )

    );
  }
}
