cask "sidequest" do
  arch arm: "-arm64"

  version "1.2.1"
  sha256 arm:   "3689dcf1a0d309376f777478787eab85f8833abf3916811abd30ecf638b1c1f9",
         intel: "957518c9b1807936df5a3f9681af9fbd3c2399e72734e5978288e2ab49252cc4"

  url "https://github.com/SideQuestVR/SideQuest/releases/download/v#{version}/SideQuest-#{version}#{arch}.dmg"
  name "SideQuest"
  desc "Virtual reality content platform"
  homepage "https://sidequestvr.com/"

  depends_on macos: :monterey

  app "SideQuest.app"

  uninstall launchctl: "com.sidequestvr.app.ShipIt"

  zap trash: [
    "~/Library/Application Support/SideQuest",
    "~/Library/Application Support/SideQuestDesktop",
    "~/Library/Caches/com.sidequestvr.app*",
    "~/Library/Caches/sidequest-desktop-updater",
    "~/Library/HTTPStorages/com.sidequestvr.app",
    "~/Library/Preferences/ByHost/com.sidequestvr.app.ShipIt.*.plist",
    "~/Library/Preferences/com.sidequestvr.app.plist",
  ]
end
