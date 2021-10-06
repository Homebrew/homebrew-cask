cask "stork" do
  version "1.0.0,1062"
  sha256 "1ddd6290b819aea404a6f52317b53409cc7e7a1b8c1abe7643bb688945893900"

  url "https://downloads.stork.ai/macos/release/Stork-#{version.before_comma}.#{version.after_comma}.dmg"
  name "Stork for macOS"
  desc "Messenger with a powerful features for hybrid work"
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
