cask "tablen" do
  version "1.21.3"
  sha256 "7ba4f1fe3d05843cd05c616a6965dc95d2b98997048e0594d1cb7f06d1024455"

  url "https://cdn.tablen.app/releases/Tablen-#{version}.dmg"
  name "Tablen"
  desc "Native SQL client"
  homepage "https://tablen.app/"

  livecheck do
    url "https://tablen.app/api/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Tablen.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Tablen_*.plist",
    "~/Library/Caches/app.tablen.macos",
    "~/Library/HTTPStorages/app.tablen.macos",
    "~/Library/Mobile Documents/iCloud~app~tablen~macos",
    "~/Library/Preferences/app.tablen.macos.plist",
    "~/Library/Saved Application State/app.tablen.macos.savedState",
  ]
end
