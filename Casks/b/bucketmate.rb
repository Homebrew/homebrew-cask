cask "bucketmate" do
  version "1.0"
  sha256 "43e8e9aa0b2921b49ed1326657eaaef2f0b48111df8ff28d435449c2bcaa56e1"

  url "https://github.com/davidtranjs/bucketmate-releases/releases/download/v#{version}/BucketMate-#{version}.dmg",
      verified: "github.com/davidtranjs/bucketmate-releases/"
  name "BucketMate"
  desc "S3-compatible GUI client"
  homepage "https://bucketmate.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "BucketMate.app"

  zap trash: [
    "~/Library/Application Support/BucketMate",
    "~/Library/Caches/app.bucketmate.mac",
    "~/Library/Preferences/app.bucketmate.mac.plist",
    "~/Library/Saved Application State/app.bucketmate.mac.savedState",
  ]
end
