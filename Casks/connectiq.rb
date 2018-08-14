cask 'connectiq' do
  version '2.4.9'
  sha256 '515fc8225d75fe552d690511b27b96778b52f4926a93b43a33cb739f98e48c3e'

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  appcast 'https://developer.garmin.com/connect-iq/sdk/'
  name 'Garmin Connect IQ SDK'
  homepage 'https://developer.garmin.com/connect-iq'

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  binary "connectiq-sdk-mac-#{version}/bin/connectiq"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
