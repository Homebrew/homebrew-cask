cask "stash" do
  version "3.1.0,390"
  sha256 "6b3a28da051b70f1ad6e4848dda7a1ad8966540497eab990ef204645ea7ffeae"

  url "https://mac-release-static.stash.ws/Stash-build-#{version.csv.second}.zip"
  name "Stash"
  desc "Network tool based on Clash"
  homepage "https://stash.ws/"

  livecheck do
    url "https://mac-release.stash.ws/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Stash.app"

  uninstall quit:   "ws.stash.app.mac",
            delete: [
              "/Library/LaunchDaemons/ws.stash.app.mac.daemon.helper.plist",
              "/Library/PrivilegedHelperTools/ws.stash.app.mac.daemon.helper",
            ]

  zap trash: [
    "~/Library/Application Scripts/group.ws.stash.app",
    "~/Library/Application Scripts/ws.stash.app",
    "~/Library/Application Scripts/ws.stash.app.mac-LaunchAtLoginHelper",
    "~/Library/Application Support/Stash",
    "~/Library/Application Support/ws.stash.app.mac",
    "~/Library/Caches/ws.stash.app.mac",
    "~/Library/Caches/ws.stash.app.mac.dashboard",
    "~/Library/Containers/ws.stash.app.mac-LaunchAtLoginHelper",
    "~/Library/Group Containers/group.ws.stash.app",
    "~/Library/HTTPStorages/ws.stash.app.mac",
    "~/Library/HTTPStorages/ws.stash.app.mac.binarycookies",
    "~/Library/Preferences/ws.stash.app.mac.plist",
  ]
end
