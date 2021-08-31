cask "stork" do
  version "1.0.0,964"
  sha256 "0c8dc154011310e2eccb43ee57a856f163097b92952b583c3bd195f5bc23bdc2"

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
