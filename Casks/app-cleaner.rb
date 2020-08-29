cask "app-cleaner" do
  version "7.0.3"
  sha256 "6b83428a2a0267df6eb8f9637ced57ac2e1832aea69568c8d82f49bd6186d4d4"

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
