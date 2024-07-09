cask "cleanapp" do
  version "5.1.3"
  sha256 "a3c806fb1246d326a6e96990a7760a7f15d030ee36857b74bd57417c173bd634"

  url "https://download.syniumsoftware.com/CleanApp/CleanApp%20#{version}.dmg"
  name "Synium Software CleanApp"
  homepage "https://www.syniumsoftware.com/cleanapp"

  livecheck do
    url "https://www.syniumsoftware.com/download/cleanapp.dmg"
    strategy :header_match
  end

  app "CleanApp.app"

  zap trash: [
    "/Library/Application Support/CleanApp",
    "/Library/LaunchDaemons/com.syniumsoftware.CleanAppDaemon.plist",
    "~/Library/Application Support/CleanApp",
    "~/Library/Caches/com.syniumsoftware.CleanApp",
    "~/Library/PreferencePanes/CleanApp Logging Service.prefPane",
    "~/Library/Preferences/com.syniumsoftware.CleanApp.plist",
    "~/Library/Preferences/com.syniumsoftware.CleanAppDaemon.plist",
    "~/Library/Preferences/com.syniumsoftware.stats_config.plist",
    "~/Library/Saved Application State/com.syniumsoftware.CleanApp.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
