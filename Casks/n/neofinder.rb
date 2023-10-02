cask "neofinder" do
  version "8.5.1"
  sha256 "2cd2ab0e8dbd3c81929eaa99919ef63a06e1ab36911c3427ba3152b5a8b44fa3"

  url "https://www.wfs-apps.de/updates/neofinder-mac.#{version}.zip",
      verified: "wfs-apps.de/"
  name "NeoFinder"
  desc "Digital media asset manager"
  homepage "https://www.cdfinder.de/"

  livecheck do
    url "https://www.wfs-apps.de/updates/neofinder-appcast-64.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "NeoFinder.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/NeoFinder_*",
    "~/Library/Application Support/NeoFinder",
    "~/Library/Caches/de.wfs-apps.neofinder",
    "~/Library/Caches/de.wfs-apps.neofinder.quicklaunch.cache",
    "~/Library/Preferences/de.wfs-apps.neofinder.plist",
    "~/Library/Preferences/de.wfs-apps.neofinder.statusBar.plist",
  ]
end
