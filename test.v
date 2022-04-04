module test;
parameter N=10 ;
wire [N-1 :0] F;
reg [N-1:0] A,B,C,D;
reg clk;

pipeline MYPIPR( F,A,B,C,D,clk);

initial clk=0;

always #10 clk=~clk;

initial
 begin
  #13 A=10 ;B=12 ;C=6; D=3 ;      
  #20 A=10; B=10 ;C=5; D=3 ;    
  #20 A=20; B=11; C=1 ;D=4;   
end

endmodule
