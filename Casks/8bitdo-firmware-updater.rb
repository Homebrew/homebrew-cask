cask "8bitdo-firmware-updater" do
  version "1.1.9"
  sha256 :no_check

  url "https://download.8bitdo.com/Tools/FirmwareUpdater/8BitDo_Firmware_Updater_macOS.dmg"
  name "8BitDo Firmware Updater"
  desc "8BitDo Upgrade tool"
  homepage "https://support.8bitdo.com/firmware-updater.html"

  livecheck do
    url "http://tools.8bitdo.com/8BitdoFirmwareUpdater/appcast.xml"
    strategy :sparkle
  end

  app "8BitDo Firmware Updater.app"

  zap trash: [
    "~/Library/Caches/com.8bitdo.firmwareupdater",
    "~/Library/Preferences/com.8bitdo.firmwareupdater.plist",
  ]
end
