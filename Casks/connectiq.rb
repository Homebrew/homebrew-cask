cask "connectiq" do
  version "4.0.4-2021-07-01-9df386fcd"
  sha256 "639d71e4dddb4442b5bf56d092bb114121348e54f167d78cbb8fb1dc36af9ecc"

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.dmg"
  name "Garmin Connect IQ SDK"
  desc "Build wearable experiences for Garmin devices and sensors with ConnectIQ SDK"
  homepage "https://developer.garmin.com/connect-iq/"

  livecheck do
    url "https://developer.garmin.com/downloads/connect-iq/sdks/sdks.json"
    regex(/connectiq-sdk-mac[._-]v?(\d+(?:\.\d+)*-\d+(?:-\d+)*-\h+)\.dmg/i)
  end

  app "connectiq-sdk-mac-#{version}/bin/ConnectIQ.app"
  app "connectiq-sdk-mac-#{version}/bin/MonkeyMotion.app"
  binary "connectiq-sdk-mac-#{version}/bin/monkeybrains.jar"
  binary "connectiq-sdk-mac-#{version}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version}/bin/monkeydoc"
  binary "connectiq-sdk-mac-#{version}/bin/shell"
end
