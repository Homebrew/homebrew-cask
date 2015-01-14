cask :v1 => 'hopper-debugger-server' do
  version '2.3'
  sha256 '291bcabcd84f395d9aba08532c1fff54101ec8d02aeb46e32c82a8a9b621c098'

  url "http://www.hopperapp.com/HopperGDBServer/HopperGDBServer-#{version}.zip"
  name 'Hopper Debugger Server'
  name 'Hopper GDB Server'
  name 'HopperGDBServer'
  appcast 'http://www.hopperapp.com/HopperGDBServer/appcast.xml',
          :sha256 => 'b554d3f681960d00d94bdce4db2efe1cc6addc69db9441e359839d6f2379924b'
  homepage 'http://www.hopperapp.com/HopperGDBServer/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hopper Debugger Server.app'
end
