cask "app-cleaner" do
  version "7.1"
  sha256 "4809a00410ab09a88e70e66aed1e88a3f359c0c26a3004e124f467d7924d7fb2"

  url "https://nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg"
  appcast "https://nektony.com/pro-support/app-cleaner/update/update.xml"
  name "Nektony App Cleaner & Uninstaller"
  homepage "https://nektony.com/mac-app-cleaner"

  app "App Cleaner #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.App-Cleaner-Pro",
    "~/Library/Application Support/com.nektony.App-Cleaner-Pro",
    "~/Library/Caches/com.nektony.App-Cleaner-Pro",
    "~/Library/Containers/com.nektony.StartupDiskFull",
    "~/Library/Preferences/com.nektony.App-Cleaner-Pro.plist",
    "~/Library/Saved Application State/com.nektony.App-Cleaner-Pro.savedState",
  ]
end
