cask "stork" do
  version "1.0.17,1754"
  sha256 "0d7a8e727c6c7ba9dc767c38931cc064cd82811c6ebf484ee1e733afc274f3b4"

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
