cask "8bitdo-firmware-updater" do
  version "2.5.2"
  sha256 "4f197854e6eca261a77b0a0fc03db60d9f0b860fcb511dadb8484f5d9edea887"

  url "https://support.8bitdo.com/upfiles/Firmware-Updater/8BitDo_Firmware_Updater_macOS_v#{version}.zip"
  name "8BitDo Firmware Updater"
  desc "Firmware updater for 8BitDo controllers"
  homepage "https://support.8bitdo.com/firmware-updater.html"

  livecheck do
    url "http://dl.8bitdo.cn/Firmware-Updater/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "8BitDo Firmware Updater.app"

  zap trash: [
    "~/Library/Caches/com.8bitdo.firmwareupdater",
    "~/Library/HTTPStorages/com.8bitdo.firmwareupdater",
    "~/Library/Preferences/com.8bitdo.firmwareupdater.plist",
  ]
end
