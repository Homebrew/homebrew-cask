cask "skype@preview" do
  version "8.124.76.101"
  sha256 "de2d0165610b3fcbdfa58617d10ed9c48a062f35e88ffe6a27f19ee62ee761d7"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype Preview"
  desc "Video chat, voice call and instant messaging application"
  homepage "https://www.skype.com/en/insider/"

  livecheck do
    url "https://go.skype.com/mac.preview.download"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "skype"
  depends_on macos: ">= :high_sierra"

  app "Skype.app"

  zap trash: [
    "~/Library/Application Support/Microsoft/Skype for Desktop",
    "~/Library/Caches/com.skype.s4l",
    "~/Library/Caches/com.skype.s4l.ShipIt",
    "~/Library/HTTPStorages/com.skype.s4l",
    "~/Library/Preferences/com.skype.s4l.plist",
  ]
end
