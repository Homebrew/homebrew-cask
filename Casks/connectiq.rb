cask 'connectiq' do
  version '2.4.2'
  sha256 '07dcdc4d2fa2703196760d0a8dba362fafae86eda6b8551948297b701e17141e'

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  name 'Garmin Connect IQ SDK'
  homepage 'https://developer.garmin.com/connect-iq'

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  binary "connectiq-sdk-mac-#{version}/bin/connectiq"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
