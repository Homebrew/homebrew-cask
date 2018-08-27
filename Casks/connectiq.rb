cask 'connectiq' do
  version '3.0.1'
  sha256 'f1be2fa5157a26118bda5d5928089381b28ae8daaede29e63c041572f7e18788'

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
