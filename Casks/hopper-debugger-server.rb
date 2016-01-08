cask 'hopper-debugger-server' do
  version '2.4'
  sha256 '32879ffedbe88d172aa59c1cdb32cdba024d842c20d705458ea4279f5bc18dab'

  url "http://www.hopperapp.com/HopperGDBServer/HopperDebuggerServer-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperGDBServer/appcast.xml',
          :sha256 => 'b31817c655cb478d64f00bfb48ba3c2c6635660ac8021192e16f67511ee346c3'
  name 'Hopper Debugger Server'
  name 'Hopper GDB Server'
  name 'HopperGDBServer'
  homepage 'http://www.hopperapp.com/HopperGDBServer/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hopper Debugger Server.app'
end
