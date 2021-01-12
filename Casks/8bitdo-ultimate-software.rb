cask "8bitdo-ultimate-software" do
  version "2.0.0"
  sha256 "8f1fffaa652bf69cc17b82a4f1014c020132f2c21a980272aad11f420355c0ae"

  url "http://tools.8bitdo.com/8BitdoUltimateSoftware/8BitDoUltimateSoftwareV#{version}.zip"
  name "8BitDo Ultimate Software"
  homepage "https://support.8bitdo.com/ultimate-software.html"

  livecheck do
    url "http://tools.8bitdo.com/8BitdoUltimateSoftware/appcast.xml"
    strategy :sparkle
  end

  app "8BitDo Ultimate Software.app"

  zap trash: [
    "~/Library/Caches/com.8BitDo.Advance",
    "~/Library/Preferences/com.8BitDo.Advance.plist",
  ]
end
