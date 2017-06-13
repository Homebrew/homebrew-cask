cask 'airserver' do
  version '7.0.5'
  sha256 '14c6ac13594ed69d5607f92f9ad9e1c1458bb22078d71078ffe6cd480578a54e'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '7336b8a1360c18d81499cac1c53c3e7c6757cf6f29437900ec1aa82bdc6af60d'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
