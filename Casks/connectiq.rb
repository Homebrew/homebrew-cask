cask "connectiq" do
  version "4.0.6-2021-10-06-af9b9d6e2"
  sha256 "8c2180be514b9f2236962bf0d5c9900ef6f48ac1218772466476411aa1b9f896"

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  name "Garmin Connect IQ SDK"
  desc "Build wearable experiences for Garmin devices and sensors with ConnectIQ SDK"
  homepage "https://developer.garmin.com/connect-iq/"

  livecheck do
    url "https://developer.garmin.com/downloads/connect-iq/sdks/sdks.json"
    regex(/connectiq-sdk-mac[._-]v?(\d+(?:\.\d+)+-\d+(?:-\d+)+-\h+)\.dmg/i)
  end

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  app "connectiq-sdk-mac-#{version}/bin/MonkeyMotion.app"
  binary "connectiq-sdk-mac-#{version}/bin/monkeybrains.jar"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydoc"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
