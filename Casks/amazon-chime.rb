cask "amazon-chime" do
  version "4.36.8257"
  sha256 "4d5cd0274f45c2343fafb122b12265b3c718572b8cbe3d78246b592bb2f3a2b3"

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX.release-#{version}.dmg"
  appcast "https://clients.chime.aws/mac/appcast"
  name "Amazon Chime"
  homepage "https://chime.aws/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Amazon Chime.app"

  zap trash: [
    "~/Library/Application Support/Amazon Chime",
    "~/Library/Application Support/com.amazon.Amazon-Chime",
    "~/Library/Caches/com.amazon.Amazon-Chime",
    "~/Library/Logs/Amazon Chime",
    "~/Library/Preferences/com.amazon.Amazon-Chime.plist",
    "~/Library/WebKit/com.amazon.Amazon-Chime",
  ]
end
