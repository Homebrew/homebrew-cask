cask "elgato-capture-device-utility" do
  version "1.3.0,629"
  sha256 "c521200d7a13eeb9c1a0eaa79f87b8bac47bae94413087b16309de50596b9e66"

  url "https://edge.elgato.com/egc/macos/ecdu/#{version.csv.first}/ElgatoCaptureDeviceUtility-#{version.csv.first}.#{version.csv.second}.app.zip"
  name "Elgato Capture Device Utility"
  desc "Update and configure Elgato Capture devices"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/ecdu-update/feed.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Elgato Capture Device Utility.app"

  zap trash: [
    "~/Library/HTTPStorages/com.elgato.CaptureDeviceUtility",
    "~/Library/Logs/ElgatoCaptureDeviceUtility",
    "~/Library/Preferences/com.elgato.CaptureDeviceUtility.plist",
    "~/Library/Saved Application State/com.elgato.CaptureDeviceUtility.savedState",
  ]
end
