cask 'airserver' do
  version '6.0.3'
  sha256 'b4d08ac1db459ea01ae1812a11421ad1f380ed417eb6b857b5142c86b3e09d29'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          :sha256 => 'd55d206cffdae8a4879833d8957eef365d5b907b2c16b355d37deb791c6cfb66'
  name 'AirServer'
  homepage 'https://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
