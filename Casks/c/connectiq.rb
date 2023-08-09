cask "connectiq" do
  version "6.2.2,2023-08-02,a0afa25e0"
  sha256 "fe9510f849d693cfdad0158fbc88f4c9950600605b2191e9ec55272c8cc36f10"

  url "https://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version.tr(",", "-")}.dmg"
  name "Garmin Connect IQ SDK"
  desc "Build wearable experiences for Garmin devices and sensors with ConnectIQ SDK"
  homepage "https://developer.garmin.com/connect-iq/"

  livecheck do
    url "https://developer.garmin.com/downloads/connect-iq/sdks/sdks.json"
    regex(/connectiq-sdk-mac[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)[._-](\h+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  app "connectiq-sdk-mac-#{version.tr(",", "-")}/bin/ConnectIQ.app"
  app "connectiq-sdk-mac-#{version.tr(",", "-")}/bin/MonkeyMotion.app"
  binary "connectiq-sdk-mac-#{version.tr(",", "-")}/bin/monkeybrains.jar"
  binary "connectiq-sdk-mac-#{version.tr(",", "-")}/bin/monkeyc"
  binary "connectiq-sdk-mac-#{version.tr(",", "-")}/bin/monkeydo"
  binary "connectiq-sdk-mac-#{version.tr(",", "-")}/bin/monkeydoc"
  binary "connectiq-sdk-mac-#{version.tr(",", "-")}/bin/shell"

  zap trash: [
    "~/Library/Application Support/Garmin",
    "~/Library/Preferences/com.garmin.connectiq.simulator.plist",
    "~/Library/Saved Application State/com.garmin.connectiq.simulator.savedState",
  ]
end
