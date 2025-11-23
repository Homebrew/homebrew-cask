cask "istat-menus@5" do
  version "5.32"
  sha256 "bfb1cd95d119c4248190dc6093147a2b08a04b27b9e57e90638d720f7b2f24c7"

  url "https://files.bjango.com/istatmenus#{version.major}/istatmenus#{version}.zip"
  name "iStats Menus"
  desc "System monitoring app"
  homepage "https://bjango.com/mac/istatmenus/"

  livecheck do
    url "https://download.bjango.com/istatmenus#{version.major}/"
    strategy :header_match
  end

  auto_updates true

  app "iStat Menus.app"

  uninstall launchctl: [
              "com.bjango.istatmenusagent",
              "com.bjango.istatmenusdaemon",
              "com.bjango.istatmenusnotifications",
              "com.bjango.istatmenusstatus",
            ],
            signal:    [
              ["TERM", "com.bjango.iStat-Menus-Notifications"],
              ["TERM", "com.bjango.iStatMenusAgent"],
              ["TERM", "com.bjango.istatmenusstatus"],
              ["TERM", "com.bjango.istatmenus"],
              ["HUP", "com.bjango.istatmenus"],
            ],
            delete:    "/Library/Application Support/iStat Menus #{version.major}"

  zap trash: [
    "/Users/Shared/.iStatMenus",
    "~/Library/Application Support/iStat Menus",
    "~/Library/Caches/com.bjango.iStat-Menus-Updater",
    "~/Library/Caches/com.bjango.istatmenus",
    "~/Library/Caches/com.bjango.iStatMenusAgent",
    "~/Library/Caches/com.bjango.istatmenusstatus",
    "~/Library/Cookies/com.bjango.iStat-Menus-Updater.binarycookies",
    "~/Library/Logs/iStat Menus",
    "~/Library/Preferences/com.bjango.istatmenus#{version.major}.extras.plist",
    "~/Library/Preferences/com.bjango.istatmenus.plist",
    "~/Library/Preferences/com.bjango.istatmenusstatus.plist",
  ]

  caveats do
    requires_rosetta
  end
end
