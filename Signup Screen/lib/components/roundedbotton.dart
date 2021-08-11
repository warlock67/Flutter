import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color bgcolor, textcolor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.bgcolor,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              backgroundColor: bgcolor,
              primary: textcolor),
          onPressed: press,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
