cask "8bitdo-ultimate-software" do
  version "2.0.4"
  sha256 "09db1657af3df1c0a2ffa87993c620762377f3a00d8127ec6ed784cef50d5a2f"

  url "http://tools.8bitdo.com/8BitdoUltimateSoftware/8BitDoUltimateSoftwareV#{version}.zip"
  name "8BitDo Ultimate Software"
  desc "Control every piece of your controller"
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
