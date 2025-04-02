cask "neofinder" do
  version "8.9"
  sha256 "9bc6c20b77db6cf63d35e9aecdd9d35e1114bdb39a957d4e245df4d556c359ba"

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
  depends_on macos: ">= :mojave"

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
