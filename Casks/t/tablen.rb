cask "tablen" do
  version "1.31.0"
  sha256 "41aafe78d455ebcfae4e678afac099a0734d69489b5314f967e1e3de046bdebd"

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
