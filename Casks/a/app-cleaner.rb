cask "app-cleaner" do
  version "9.3,2260"
  sha256 "d87f8eaeb3437e84d30bb94b986a287ceb13b55d4f3feb588e4cbeb8f81cddc6"

  url "https://download.nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg?build=#{version.csv.second}"
  name "Nektony App Cleaner & Uninstaller"
  desc "Uninstaller and cleaning assistant"
  homepage "https://nektony.com/mac-app-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/app-cleaner/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

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
