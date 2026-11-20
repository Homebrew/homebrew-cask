cask "app-cleaner" do
  version "10.0.3,2406"
  sha256 "50dc89fce06d24f5cd70a1a25cd214b1a90d01f437ce3276fa1a269f16f49b5c"

  url "https://download.nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg?build=#{version.csv.second}"
  name "Nektony App Cleaner & Uninstaller"
  desc "Uninstaller and cleaning assistant"
  homepage "https://nektony.com/mac-app-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/app-cleaner/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "App Cleaner #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/8DKG4XB37M.group.com.nektony.App-Cleaner-SIII",
    "~/Library/Application Scripts/com.nektony.App-Cleaner-Pro",
    "~/Library/Application Support/com.nektony.App-Cleaner-Pro",
    "~/Library/Application Support/com.nektony.App-Cleaner-SIII",
    "~/Library/Caches/com.nektony.App-Cleaner-Pro",
    "~/Library/Caches/com.nektony.App-Cleaner-SIII",
    "~/Library/Containers/com.nektony.StartupDiskFull",
    "~/Library/Group Containers/8DKG4XB37M.group.com.nektony.App-Cleaner-SIII",
    "~/Library/HTTPStorages/com.nektony.App-Cleaner-SIII",
    "~/Library/Preferences/com.nektony.App-Cleaner-Pro.plist",
    "~/Library/Preferences/com.nektony.App-Cleaner-SIII.plist",
    "~/Library/Saved Application State/com.nektony.App-Cleaner-Pro.savedState",
  ]
end
