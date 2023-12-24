cask "istat-menus" do
  version "6.73"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://cdn.bjango.com/files/istatmenus#{version.major}/istatmenus#{version}.zip"
  name "iStats Menus"
  desc "System monitoring app"
  homepage "https://bjango.com/mac/istatmenus/"

  livecheck do
    url "https://download.bjango.com/istatmenus/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "iStat Menus.app"

  uninstall launchctl: [
              "com.bjango.istatmenus.agent",
              "com.bjango.istatmenus.daemon",
              "com.bjango.istatmenusnotifications",
              "com.bjango.istatmenus.status",
              "com.bjango.istatmenus.installerhelper",
            ],
            signal:    [
              ["TERM", "com.bjango.iStat-Menus-Notifications"],
              ["TERM", "com.bjango.iStatMenusAgent"],
              ["TERM", "com.bjango.istatmenusstatus"],
              ["TERM", "com.bjango.istatmenus"],
              ["HUP", "com.bjango.istatmenus"],
            ],
            delete:    [
              "/Library/Application Support/iStat Menus #{version.major}",
              "/Library/LaunchDaemons/com.bjango.istatmenus.fans.plist",
              "/Library/Logs/iStat Menus",
              "/Library/PrivilegedHelperTools/com.bjango.istatmenus.installerhelper",
            ]

  zap trash: [
    "~/Library/Application Support/iStat Menus",
    "~/Library/Application Scripts/com.bjango.istatmenus.iStat-Menus-Widget",
    "~/Library/Caches/com.bjango.istatmenus",
    "~/Library/Caches/com.bjango.istatmenus.status",
    "~/Library/Caches/com.bjango.istatmenus.agent",
    "~/Library/Caches/com.bjango.iStat-Menus-Updater",
    "~/Library/Caches/com.bjango.iStatMenusAgent",
    "~/Library/Caches/iStat Menus",
    "~/Library/Containers/com.bjango.istatmenus.iStat-Menus-Widget",
    "~/Library/Cookies/com.bjango.istatmenus.binarycookies",
    "~/Library/Logs/iStat Menus",
    "~/Library/Preferences/com.bjango.istatmenus.plist",
    "~/Library/Preferences/com.bjango.istatmenus#{version.major}.extras.plist",
    "~/Library/Preferences/com.bjango.istatmenus.status.plist",
    "/Users/Shared/.iStatMenus",
  ]
end
