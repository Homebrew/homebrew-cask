cask "amazon-chime" do
  version "5.23.22271"
  sha256 "edba5dacb2a0e61a2bc09f64adf752dee9072e7ea59c162d201cea0bd4838f88"

  url "https://clients.chime.aws/mac-nme/AmazonChime-#{version}.dmg"
  name "Amazon Chime"
  desc "Communications service"
  homepage "https://chime.aws/"

  livecheck do
    url "https://clients.chime.aws/mac/latest"
    regex(/AmazonChime[._-]?v?(\d+(:?\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
