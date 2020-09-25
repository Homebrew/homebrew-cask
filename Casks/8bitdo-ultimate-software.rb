cask "8bitdo-ultimate-software" do
  version "1.3.4"
  sha256 "4f20ae0b3ad750022bfaec77693a322a90864f391b963d55684da60788b458cb"

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
