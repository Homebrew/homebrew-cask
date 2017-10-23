cask 'airserver' do
  version '7.1.2'
  sha256 'c5e406291158800f17121cd130a23e915a44f7612f8c9e419455d149b7a0b3fd'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: 'cd46aa957c9db53a884c0697f2845528d7e28bf126a45d2f74bf892bbb4edc5b'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
