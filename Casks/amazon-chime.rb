cask "amazon-chime" do
  version "4.37.8279"
  sha256 "eb5cf11a6e42845ea6c0880123cb03d444f5b79db9225c038b32a5cf91808963"

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
