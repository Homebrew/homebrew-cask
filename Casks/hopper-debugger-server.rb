cask 'hopper-debugger-server' do
  version '2.4'
  sha256 '32879ffedbe88d172aa59c1cdb32cdba024d842c20d705458ea4279f5bc18dab'

  url "http://www.hopperapp.com/HopperGDBServer/HopperDebuggerServer-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperGDBServer/appcast.xml',
          checkpoint: '208cead0553000971b5b0b7dece33d71e7eb2467dd9887f8e24c65523f408347'
  name 'Hopper Debugger Server'
  homepage 'http://www.hopperapp.com/HopperGDBServer/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hopper Debugger Server.app'
end
