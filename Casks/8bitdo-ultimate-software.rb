cask "8bitdo-ultimate-software" do
  version "2.0.6"
  sha256 "21c0af67e6aad0cda117d0ded8d964abf51f2957ab1c7caf0258fdc3e0178abb"

  url "http://tools.8bitdo.com/8BitdoUltimateSoftware/8BitDoUltimateSoftwareV#{version}.zip"
  name "8BitDo Ultimate Software"
  desc "Control every piece of your controller"
  homepage "https://support.8bitdo.com/ultimate-software.html"

  livecheck do
    url "http://tools.8bitdo.com/8BitdoUltimateSoftware/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "8BitDo Ultimate Software.app"

  zap trash: [
    "~/Library/Caches/com.8BitDo.Advance",
    "~/Library/Preferences/com.8BitDo.Advance.plist",
  ]
end
