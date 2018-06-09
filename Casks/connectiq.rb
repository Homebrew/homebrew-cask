cask 'connectiq' do
  version '2.4.6'
  sha256 '297e8e18c5dbb31e60dbb398518f001fee26085a52e344cf21e1e43617ea0514'

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  name 'Garmin Connect IQ SDK'
  homepage 'https://developer.garmin.com/connect-iq'

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  binary "connectiq-sdk-mac-#{version}/bin/connectiq"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
