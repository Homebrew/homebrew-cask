cask "app-cleaner" do
  version "8.1.2"
  sha256 :no_check

  url "https://nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg"
  name "Nektony App Cleaner & Uninstaller"
  desc "Uninstaller and cleaning assistant"
  homepage "https://nektony.com/mac-app-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/app-cleaner/update/update.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

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
