cask "amazon-chime" do
  version "4.35.8244"
  sha256 "b509be3b4d0db5f366561ee4019b141ec5b28fc9c7b8f466d2e4ed0f48a526ac"

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
