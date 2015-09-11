cask :v1 => 'hopper-debugger-server' do
  version '2.4'
  sha256 '32879ffedbe88d172aa59c1cdb32cdba024d842c20d705458ea4279f5bc18dab'

  url "http://www.hopperapp.com/HopperGDBServer/HopperDebuggerServer-#{version}.zip"
  name 'Hopper Debugger Server'
  name 'Hopper GDB Server'
  name 'HopperGDBServer'
  appcast 'http://www.hopperapp.com/HopperGDBServer/appcast.xml',
          :sha256 => 'b554d3f681960d00d94bdce4db2efe1cc6addc69db9441e359839d6f2379924b'
  homepage 'http://www.hopperapp.com/HopperGDBServer/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hopper Debugger Server.app'
end
