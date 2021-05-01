cask "8bitdo-ultimate-software" do
  version "2.0.2"
  sha256 "9703cbe2f3fcb6de4e6692733a28e6d46d728f980835360579e8594569ec1695"

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
