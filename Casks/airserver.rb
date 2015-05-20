cask :v1 => 'airserver' do
  version '5.3.2'
  sha256 '554e664324a00ebfb263ab4a2813a697425b21182509478ad88d324f1a704b81'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  name 'AirServer'
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
