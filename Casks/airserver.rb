cask 'airserver' do
  version '7.1.6'
  sha256 'fb0cc085ad911a9821db8d10a2eb2b41b3685e862bc2ad919e58f5b1c9f6d139'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
