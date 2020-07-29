cask 'airserver' do
  version '7.2.5'
  sha256 '75f9d31bb093cf191f6d954a2aaf2f754add058dc69d9fbc958dfab2e78269b6'

  url "https://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
