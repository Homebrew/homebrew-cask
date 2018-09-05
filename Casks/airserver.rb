cask 'airserver' do
  version '7.1.4'
  sha256 '4dc33693c68fedc8bbd93b54e23da8879f744feb130451e4a5bb4b5b6f1a47d3'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
