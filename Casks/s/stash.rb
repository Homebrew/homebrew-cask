cask "stash" do
  version "4.3.0,543"
  sha256 "70826f70388f2451462079147b1ea6f28c4aa563ff1c24918d2ce1f15803d454"

  url "https://mac-release-static.stash.ws/Stash-build-#{version.csv.second}.zip"
  name "Stash"
  desc "Network tool based on Clash"
  homepage "https://stash.ws/"

  livecheck do
    url "https://mac-release.stash.ws/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Stash.app"
  binary "#{appdir}/Stash.app/Contents/Applications/Stash Dashboard.app", target: "#{appdir}/Stash Dashboard.app"

  uninstall quit:   "ws.stash.app.mac",
            delete: [
              "/Library/LaunchDaemons/ws.stash.app.mac.daemon.helper.plist",
              "/Library/PrivilegedHelperTools/ws.stash.app.mac.daemon.helper",
            ]

  zap trash: [
    "~/Library/Application Scripts/B36787XSBG.ws.stash.app",
    "~/Library/Application Scripts/group.ws.stash.app",
    "~/Library/Application Scripts/ws.stash.app",
    "~/Library/Application Scripts/ws.stash.app.mac-LaunchAtLoginHelper",
    "~/Library/Application Support/Stash",
    "~/Library/Application Support/ws.stash.app.mac",
    "~/Library/Caches/ws.stash.app.mac",
    "~/Library/Caches/ws.stash.app.mac.dashboard",
    "~/Library/Containers/ws.stash.app.mac-LaunchAtLoginHelper",
    "~/Library/Group Containers/B36787XSBG.ws.stash.app",
    "~/Library/Group Containers/group.ws.stash.app",
    "~/Library/HTTPStorages/ws.stash.app.mac",
    "~/Library/HTTPStorages/ws.stash.app.mac.binarycookies",
    "~/Library/Preferences/ws.stash.app.mac.plist",
    "~/Library/WebKit/ws.stash.app.mac",
  ]
end
