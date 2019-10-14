cask 'airserver' do
  version '7.2.0'
  sha256 'f86786283455979b45c12b7a848f09243d74e2b3ff10dbce907ec8e73099f855'

  url "https://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
