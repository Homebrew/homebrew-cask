cask "connectiq" do
  version "3.1.8-2020-05-01-5a72d0ab2"
  sha256 "32b2d5ec65329b4c2ed0c53fbc9afa7af097ac48776a4caaa3c92649f3c52649"

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  appcast "https://developer.garmin.com/connect-iq/sdk/"
  name "Garmin Connect IQ SDK"
  homepage "https://developer.garmin.com/connect-iq/"

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  binary "connectiq-sdk-mac-#{version}/bin/connectiq"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
