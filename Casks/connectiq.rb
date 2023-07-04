cask "connectiq" do
  version "6.2.1,2023-06-26,124cb49c5"
  sha256 "f2d1b691cb9ed75578339fffb89b82ce5594c0736211c9f9797345f34f869642"

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
