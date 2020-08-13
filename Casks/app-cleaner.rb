cask "app-cleaner" do
  version "7.0.2"
  sha256 "7b1fdfcb61f0ea12075dda65c04062f87d0b3c465ef455cc45e5c398002b4764"

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
