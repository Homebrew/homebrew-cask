cask "airsync" do
  version "4.0.0"
  sha256 "c502e935191774c6980ab64b6f54a4f88774a1905fdcfc4f1749b87a145085c0"

  url "https://github.com/sameerasw/airsync-mac/releases/download/v#{version}/AirSync.dmg"
  name "AirSync"
  desc "Continuity with your Android. Sync notifications, mirror screen and more"
  homepage "https://github.com/sameerasw/airsync-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AirSync.app"

  zap trash: [
    "~/Library/Caches/sameerasw.airsync-mac",
    "~/Library/Preferences/sameerasw.airsync-mac.plist",
    "~/Library/Saved Application State/sameerasw.airsync-mac.savedState",
    "~/Library/Application Support/airsync-mac",
  ]
end
