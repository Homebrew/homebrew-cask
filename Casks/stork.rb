cask "stork" do
  version "1.0.15,1745"
  sha256 "1864255216e4b11875ba900c2422fdfabe1f6bc4059be0578bd43536a05d5a2c"

  url "https://downloads.stork.ai/macos/release/Stork-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Stork"
  desc "Messenger with powerful features for hybrid work"
  homepage "https://stork.ai/"

  livecheck do
    url "https://downloads.stork.ai/macos/release/app_cast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Stork.app"

  zap trash: [
    "~/Library/Application Scripts/com.stork.stork",
    "~/Library/Application Scripts/com.stork.stork-LaunchAtLoginHelper",
    "~/Library/Application Support/com.stork.stork",
    "~/Library/Caches/com.stork.stork",
    "~/Library/Cookies/com.stork.stork.binarycookies",
    "~/Library/Group Containers/*.group.com.stork.stork",
    "~/Library/Preferences/com.stork.stork.plist",
    "~/Library/Saved Application State/com.stork.stork.savedState",
  ]
end
