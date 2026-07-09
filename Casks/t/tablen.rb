cask "tablen" do
  version "1.28.0"
  sha256 "67c64b7d63df769b20b9e77ebf6e0d60a9975b4fcd5d05255fa7981f580abe0e"

  url "https://cdn.tablen.app/releases/Tablen-#{version}.dmg"
  name "Tablen"
  desc "Native SQL client"
  homepage "https://tablen.app/"

  livecheck do
    url "https://tablen.app/api/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

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
