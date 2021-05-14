cask "connectiq" do
  version "4.0.1-2021-04-21-1bb58d97e"
  sha256 "f718e543aff6ca39c080285f29fb24d47342e942c06cab149af248cae91a640f"

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
