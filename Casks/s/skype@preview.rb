cask "skype@preview" do
  version "8.134.76.202"
  sha256 "872e3f49730fdbc049393e889c30c22349b19a4e2d7c4d69b54db0a0b3e8ab95"

  url "https://download.skype.com/s4l/download/mac/Skype-#{version}.dmg"
  name "Skype Preview"
  desc "Video chat, voice call and instant messaging application"
  homepage "https://www.skype.com/en/insider/"

  livecheck do
    url "https://get.skype.com/go/getskype-skypeformacinsider"
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
