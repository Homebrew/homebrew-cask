cask 'connectiq' do
  version '3.0.9-2019-3-25-0df4ba2'
  sha256 'f0f703b20f8cd6522c4c13f720cc8fa31f67d98d9d179aa479dc842c92d12b7a'

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
