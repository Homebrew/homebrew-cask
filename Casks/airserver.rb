cask :v1 => 'airserver' do
  version '5.3.2'
  sha256 '554e664324a00ebfb263ab4a2813a697425b21182509478ad88d324f1a704b81'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'http://www.airserver.com/downloads/mac/appcast.xml',
          :sha256 => 'fa151a326537fdf67ae5b2aacbc1b8565353a8c4b437376194b3310867926289'
  name 'AirServer'
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
