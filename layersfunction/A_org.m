function [O, DzDw] = A_org ( x, mu2, DzDy1, DzDy2 )

%% network setting
config;
% mu2 = 1;
%% The forward propagation
if nargin == 2  
    O = mu2*x;
end
%% The backward propagation
if nargin == 4
    DzDy = DzDy1 + DzDy2;
    %  O
    O = DzDy*mu2; % dE/dx
    % DzDw
    temp = DzDy.*x; % dE/dmu2
    DzDw = sum(temp(:));
end
end
