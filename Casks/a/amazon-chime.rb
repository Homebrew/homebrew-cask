cask "amazon-chime" do
  version "5.22.22085"
  sha256 "c588258665b01d0948e0fe641b177b6c9ec2999b704320c23c809910c1ffef38"

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
