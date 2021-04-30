cask "connectiq" do
  version "3.2.5-2021-02-12-6d31f4357"
  sha256 "33f17f2632a5dcbd7af3a6846cdab0af3f1b2b5d45af75357e71955f8357f648"

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  name "Garmin Connect IQ SDK"
  desc "Build wearable experiences for Garmin devices and sensors with ConnectIQ SDK"
  homepage "https://developer.garmin.com/connect-iq/"

  livecheck do
    url "https://developer.garmin.com/downloads/connect-iq/sdks/sdks.json"
    strategy :page_match
    regex(/connectiq-sdk-mac-(\d+(?:\.\d+)*-\d+(?:-\d+)*-[0-9a-f]+)\.dmg/i)
  end

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  app "connectiq-sdk-mac-#{version}/bin/MonkeyMotion.app"
  binary "connectiq-sdk-mac-#{version}/bin/monkeybrains.jar"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydoc"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
