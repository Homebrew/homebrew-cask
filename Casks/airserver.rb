cask 'airserver' do
  version '7.1.4'
  sha256 '4dc33693c68fedc8bbd93b54e23da8879f744feb130451e4a5bb4b5b6f1a47d3'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: 'cd46aa957c9db53a884c0697f2845528d7e28bf126a45d2f74bf892bbb4edc5b'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
