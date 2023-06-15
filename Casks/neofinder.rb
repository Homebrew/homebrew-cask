cask "neofinder" do
  version "8.4.1"
  sha256 "efac83e9ef28f9180fd9bd7ed4cca0e60cc13cd641545ae992348c2ee23332a8"

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
