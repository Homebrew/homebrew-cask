cask "amazon-chime" do
  version "4.39.8648"
  sha256 "dd64e1be96e70e0fe2d837f5fae2af18488a883acd7fce3b8765d38bd2d4c24c"

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-notarize.release-#{version}.dmg"
  name "Amazon Chime"
  desc "Communications service"
  homepage "https://chime.aws/"

  livecheck do
    url "https://clients.chime.aws/mac/appcast"
    strategy :sparkle
  end

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
