cask "stork" do
  version "1.0.0,886"
  sha256 "f613ec408d797d9577307205cdf9e0829f19c07d872be2acbf4ab53dcfb3fb51"

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
