cask "neofinder" do
  version "8.7"
  sha256 "e2da1aaea9160a654dbdc3e051d2c963ccbc98357813ad74c0cd9c8948b9ad55"

  url "https://www.wfs-apps.de/updates/neofinder-mac.#{version}.zip",
      verified: "wfs-apps.de/"
  name "NeoFinder"
  desc "Digital media asset manager"
  homepage "https://www.cdfinder.de/"

  livecheck do
    url "https://www.wfs-apps.de/updates/neofinder-appcast-64.xml"
    strategy :sparkle
  end

  auto_updates true
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
