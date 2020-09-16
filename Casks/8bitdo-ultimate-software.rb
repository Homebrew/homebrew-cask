cask "8bitdo-ultimate-software" do
  version "1.3.0"
  sha256 "634f9c911715efbf25f42a0c8b398c82a1ac613877e268c61616ea6fd8951848"

  url "http://tools.8bitdo.com/8BitdoUltimateSoftware/8BitDoUltimateSoftwareV#{version}.zip"
  appcast "http://tools.8bitdo.com/8BitdoUltimateSoftware/appcast.xml"
  name "8BitDo Ultimate Software"
  homepage "https://support.8bitdo.com/ultimate-software.html"

  app "8BitDo Ultimate Software.app"

  zap trash: [
    "~/Library/Caches/com.8BitDo.Advance",
    "~/Library/Preferences/com.8BitDo.Advance.plist",
  ]
end
