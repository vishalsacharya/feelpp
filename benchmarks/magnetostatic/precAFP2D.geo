Mesh.MshFileVersion = 2.2;
Mesh.CharacteristicLengthExtendFromBoundary = 1;
Mesh.CharacteristicLengthFromPoints = 1;
Mesh.ElementOrder = 1;
Mesh.SecondOrderIncomplete = 0;
Mesh.Algorithm = 6;
Mesh.Algorithm3D = 1;
//Mesh.OptimizeNetgen = 1;
h = 0.1;
Mesh.RecombinationAlgorithm = 0;
xmin = -1;
xmax = 1;
ymin = -1;
ymax = 1;
Point(1) = {xmin,ymin,0.0,h};
Point(2) = {xmax,ymin+0,0.0,h};
Point(3) = {xmax+0,ymax,0.0,h};
Point(4) = {xmin+0,ymax+0,0.0,h};
Line(1) = {4,1};
Line(2) = {1,2};
Line(3) = {2,3};
Line(4) = {3,4};
Line Loop(5) = {1,2,3,4};
Plane Surface(6) = {5};
Physical Line("Border") = {1,2,3,4};
Physical Surface("firstMat") = {6};
