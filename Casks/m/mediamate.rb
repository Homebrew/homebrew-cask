cask "mediamate" do
  version "3.7.0,294"
  sha256 "d3dfb9743754bc0ab5f03342e4fd5b1d5557d9fea2260d6bfc5ae33959bba85c"

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
  depends_on macos: ">= :ventura"

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
