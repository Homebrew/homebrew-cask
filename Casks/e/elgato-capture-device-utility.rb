cask "elgato-capture-device-utility" do
  version "1.3.1,684"
  sha256 "4a7885e0cbb85ba94847c43a5b59cc62b7b129c2607626c7233344570f35e154"

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
