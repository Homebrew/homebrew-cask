cask :v1 => 'hoppergdbserver' do
  version '1.6'
  sha256 '124ea3e34f970f412de28de0e482edf527e064efdb954b3804aab248edc3c017'

  url "http://www.hopperapp.com/HopperGDBServer/HopperGDBServer-#{version}.zip"
  appcast 'http://www.hopperapp.com/HopperGDBServer/appcast.xml',
          :sha256 => 'b554d3f681960d00d94bdce4db2efe1cc6addc69db9441e359839d6f2379924b'
  homepage 'http://www.hopperapp.com/HopperGDBServer/index.html'
  license :unknown

  app 'HopperGDBServer.app'
end
