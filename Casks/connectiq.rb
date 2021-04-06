cask "connectiq" do
  version "3.2.3-2020-10-13-c14e609bd"
  sha256 "3d5a9faf72366d70ccd2b023c39942c227f2c6be94b7f65ec814589f8368d41b"

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  appcast "https://developer.garmin.com/connect-iq/sdk/"
  name "Garmin Connect IQ SDK"
  desc "Build wearable experiences for Garmin devices and sensors with ConnectIQ SDK"
  homepage "https://developer.garmin.com/connect-iq/"

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  app "connectiq-sdk-mac-#{version}/bin/MonkeyMotion.app"
  binary "connectiq-sdk-mac-#{version}/bin/monkeybrains.jar"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydoc"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
