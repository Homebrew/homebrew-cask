cask "tablen" do
  version "1.29.0"
  sha256 "579ed6746f9e0c73ebf11d44d701cdf9e96eced2a23132602e809d85da8c662a"

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
