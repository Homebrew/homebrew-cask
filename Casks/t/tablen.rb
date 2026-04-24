cask "tablen" do
  version "1.23.2"
  sha256 "5123464f740c2f0931056b7830f9cd3958eba9ea24f982a6298fe39117eec65f"

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
