cask "app-cleaner" do
  version "8.6.2,2041"
  sha256 "736d91cdca1b7b6264e7856ff8373bf9dc66154813cbbb0628fd5e5bada2affc"

  url "https://download.nektony.com/download/app-cleaner-uninstaller/app-cleaner-uninstaller.dmg?build=#{version.csv.second}"
  name "Nektony App Cleaner & Uninstaller"
  desc "Uninstaller and cleaning assistant"
  homepage "https://nektony.com/mac-app-cleaner"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/app-cleaner/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
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
