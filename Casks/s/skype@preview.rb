cask "skype@preview" do
  version "8.138.76.205"
  sha256 "4a663dbd8812d7345a095aeb68b92dd3fcf3484acd7f3d0ec87a25b6564fe5f7"

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
