[status, result] = system('hostname');
str = mat2str(result);

if size(strfind(str, 'Celsius'),1) > 0
    fprintf('\n\nCelsius recognized\n\n');
    
    mex -I../../../external_libraries/ACADOtoolkit-1.0.2613beta/include ...
        -I../../../external_libraries/ACADOtoolkit-1.0.2613beta/new_features/include ...
        -I../../../external_libraries/ACADOtoolkit-1.0.2613beta/external_packages ...
        -I../../../external_libraries/ACADOtoolkit-1.0.2613beta/external_packages/qpOASES-2.0/INCLUDE ...
        -I../include -I../Maple -I../lib  ...
        -I../../../external_libraries/ACADOtoolkit-1.0.2613beta/libs ...
        SingleStageMex.cpp ../Maple/get_abc.o ../Maple/get_parameters_xy.o ../lib/libLHD.a ...
        ../../../external_libraries/ACADOtoolkit-1.0.2613beta/libs/libacado_toolkit.a ...
        ../../../external_libraries/ACADOtoolkit-1.0.2613beta/libs/libqpOASESextras2.0.a ...
        ../../../external_libraries/ACADOtoolkit-1.0.2613beta/libs/libcsparse.a ...
        
    
    
elseif size(strfind(str, 'phoenix'),1) > 0
    fprintf('\n\nPhoenix recognized\n\n');
    
    mex -I../../ACADOtoolkit-1.0.2613beta/include ...
        -I../../ACADOtoolkit-1.0.2613beta/new_features/include ...
        -I../../ACADOtoolkit-1.0.2613beta/external_packages ...
        -I../../ACADOtoolkit-1.0.2613beta/external_packages/qpOASES-2.0/INCLUDE ...
        -I../include -I../Maple -I../lib ...
        -I../../ACADOtoolkit-1.0.2613beta/libs ...
        SingleStageMex.cpp ...
        ../Maple/get_abc.o ../Maple/get_parameters_xy.o ../lib/libLHD.a ...
        ../../ACADOtoolkit-1.0.2613beta/libs/libacado_toolkit.a ...
        ../../ACADOtoolkit-1.0.2613beta/libs/libqpOASESextras2.0.a ...
        ../../ACADOtoolkit-1.0.2613beta/libs/libcsparse.a ...

    
else 
    fprintf('system not recognized\n');
end