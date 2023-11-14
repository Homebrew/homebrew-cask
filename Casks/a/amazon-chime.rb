cask "amazon-chime" do
  version "5.23.22117"
  sha256 "a8d0e9290fa89f835af32da8c8d8f264a213346a6fc037ac63c368d7302ec1f3"

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
