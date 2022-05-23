cask "amazon-chime" do
  version "4.39.8628"
  sha256 "58198035c537e4ad3fe44af007770e4273f098bfd078c8fd5b1906f7bbfa27af"

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
