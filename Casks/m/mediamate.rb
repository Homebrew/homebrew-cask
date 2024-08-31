cask "mediamate" do
  version "3.6.0,281"
  sha256 "cbcdc93c22265b1589e80855b0d31e64102bb397f83dfde6c49371452ef565f5"

  url "https://github.com/Wouter01/MediaMate-Releases/releases/download/v#{version.csv.first}_#{version.csv.second}/MediaMate_v#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/Wouter01/MediaMate-Releases/"
  name "MediaMate"
  desc "UI replacement for volume, brightness and now playing controls"
  homepage "https://wouter01.github.io/MediaMate/"

  livecheck do
    url "https://raw.githubusercontent.com/Wouter01/MediaMate-Releases/sparkle/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "MediaMate.app"

  uninstall quit: "com.tweety.MediaMate"

  zap trash: [
    "~/Library/Caches/CloudKit/com.tweety.MediaMate",
    "~/Library/Caches/com.tweety.MediaMate",
    "~/Library/HTTPStorages/com.tweety.MediaMate",
    "~/Library/HTTPStorages/com.tweety.MediaMate.binarycookies",
    "~/Library/Preferences/com.tweety.MediaMate.plist",
  ]
end
