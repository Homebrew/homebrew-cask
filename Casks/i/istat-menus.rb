cask "istat-menus" do
  version "7.02.10"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://cdn.istatmenus.app/files/istatmenus#{version.major}/versions/iStatMenus#{version}.zip",
      verified: "cdn.istatmenus.app/"
  name "iStats Menus"
  desc "System monitoring app"
  homepage "https://bjango.com/mac/istatmenus/"

  livecheck do
    url "https://download.bjango.com/istatmenus#{version.major}/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "iStat Menus.app"

  uninstall launchctl: [
              "com.bjango.istatmenus.agent",
              "com.bjango.istatmenus.daemon",
              "com.bjango.istatmenus.installerhelper",
              "com.bjango.istatmenus.status",
              "com.bjango.istatmenusnotifications",
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
              "/Library/PrivilegedHelperTools/com.bjango.istatmenus.installer",
              "/Library/PrivilegedHelperTools/com.bjango.istatmenus.installerhelper",
            ]

  zap trash: [
    "/Users/Shared/.iStatMenus",
    "~/Library/Application Scripts/com.bjango.istatmenus.iStat-Menus-Widget",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bjango.istatmenus.agent.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bjango.istatmenus.status.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/y93tk974at.com.bjango.istatmenus.agent.mas.sfl*",
    "~/Library/Application Support/iStat Menus",
    "~/Library/Caches/com.bjango.istatmenus",
    "~/Library/Caches/com.bjango.istatmenus.agent",
    "~/Library/Caches/com.bjango.istatmenus.status",
    "~/Library/Caches/com.bjango.istatmenus.updater",
    "~/Library/Caches/com.bjango.iStatMenusAgent",
    "~/Library/Caches/iStat Menus #{version.major}",
    "~/Library/Containers/com.bjango.istatmenus.iStat-Menus-Widget",
    "~/Library/Cookies/com.bjango.istatmenus.binarycookies",
    "~/Library/HTTPStorages/com.bjango.istatmenus",
    "~/Library/HTTPStorages/com.bjango.istatmenus.agent",
    "~/Library/HTTPStorages/com.bjango.istatmenus.status",
    "~/Library/HTTPStorages/com.bjango.istatmenus.updater",
    "~/Library/Logs/iStat Menus #{version.major}",
    "~/Library/Preferences/com.bjango.istatmenus#{version.major}.extras.plist",
    "~/Library/Preferences/com.bjango.istatmenus.agent.plist",
    "~/Library/Preferences/com.bjango.istatmenus.menubar.#{version.major}.plist",
    "~/Library/Preferences/com.bjango.istatmenus.plist",
    "~/Library/Preferences/com.bjango.istatmenus.status.plist",
    "~/Library/WebKit/com.bjango.istatmenus",
    "~/Library/WebKit/com.bjango.istatmenus.updater",
  ]
end
