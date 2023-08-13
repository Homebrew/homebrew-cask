cask "stash" do
  version "2.3.0,221"
  sha256 "7364b0b483a9ea968e9bf9f1a44d7d5302630ad91881caa4ea4033dcaccb6ed5"

  url "https://mac-release-static.stash.ws/Stash-build-#{version.csv.second}.zip"
  name "Stash"
  desc "Simple & Powerful Network Tool based on Clash"
  homepage "https://stash.ws/"

  livecheck do
    url "https://mac-release.stash.ws/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Stash.app"

  uninstall quit: "ws.stash.app.mac"

  zap trash: [
    "~/Library/HTTPStorages/ws.stash.app.mac.binarycookies",
    "~/Library/HTTPStorages/ws.stash.app.mac",
    "~/Library/Preferences/ws.stash.app.mac.plist",
    "~/Library/Group Containers/group.ws.stash.app",
    "~/Library/Containers/ws.stash.app.mac-LaunchAtLoginHelper",
    "~/Library/Application Support/Stash",
    "~/Library/Application Support/ws.stash.app.mac",
    "~/Library/Application Scripts/group.ws.stash.app",
    "~/Library/Application Scripts/ws.stash.app",
    "~/Library/Application Scripts/ws.stash.app.mac-LaunchAtLoginHelper",
    "~/Library/Caches/ws.stash.app.mac",
    "~/Library/Caches/ws.stash.app.mac.dashboard",
    "/Library/PrivilegedHelperTools/ws.stash.app.mac.daemon.helper",
    "/Library/LaunchDaemons/ws.stash.app.mac.daemon.helper.plist",
  ]
end
