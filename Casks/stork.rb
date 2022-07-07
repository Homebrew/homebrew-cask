cask "stork" do
  version "1.0.9,1655"
  sha256 "2270f13cccaca60db9bfe8e79c46425ed9ca4b3c659d74b61e7a633aeda30fda"

  url "https://downloads.stork.ai/macos/release/Stork-#{version.csv.first}.#{version.csv.second}.dmg"
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
