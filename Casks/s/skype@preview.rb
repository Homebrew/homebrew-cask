cask "skype@preview" do
  version "8.138.76.208"
  sha256 "f099074668a6e54c754a09067ba138bd8612e01399e950be70d83da323d93479"

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
