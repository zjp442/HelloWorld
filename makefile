# links stdc++ library by default
# CC := g++
# or
CC := cc

all: hello

main.o: hello.cpp
	$(CC) -c -o main.o  hello.cpp

# notice -lstd++ is after the .o files
hello: main.o
	$(CC) -o hello main.o -lstdc++

clean:
	-rm main.o hello
