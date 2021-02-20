public void setup()
{
  size(500,500);
}
public void draw()
{
  background(0);
  frameRate(1);
  myFractal(250,250,480,480);
}
public void myFractal(int x, int y, int siz, int siz2){
  ellipse(x, y, siz, siz2);

  if(siz >10)
  {
   fill(random(1,256), random(1,256), random(1,256)); 
   myFractal(x/2,y/2,siz/2,siz2/2);
   fill(random(1,256), random(1,256), random(1,256)); 
   myFractal(x*2,y*2,siz/2,siz2/2);
   fill(random(1,256), random(1,256), random(1,256)); 
   myFractal(x,y,siz/2,siz2/2);
  }
}
