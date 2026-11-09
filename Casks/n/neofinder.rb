cask "neofinder" do
  version "9.3.1"
  sha256 "375ef64fb0ed84930f7961fc2a5200e2aa06e0294c15e70d4b60513e804b006f"

  url "https://www.wfs-apps.de/updates/neofinder-mac.#{version}.zip"
  name "NeoFinder"
  desc "Digital media asset manager"
  homepage "https://www.cdfinder.de/"

  livecheck do
    url "https://www.wfs-apps.de/updates/neofinder-appcast-64.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "NeoFinder.app"

  uninstall quit: "de.wfs-apps.neofinder"

  zap trash: [
    "~/Library/Application Support/CrashReporter/NeoFinder_*",
    "~/Library/Application Support/NeoFinder",
    "~/Library/Caches/de.wfs-apps.neofinder",
    "~/Library/Caches/de.wfs-apps.neofinder.quicklaunch.cache",
    "~/Library/Preferences/de.wfs-apps.neofinder.plist",
    "~/Library/Preferences/de.wfs-apps.neofinder.plist",
    "~/Library/Preferences/de.wfs-apps.neofinder.statusBar.plist",
  ]
end
