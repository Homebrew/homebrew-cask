cask "sidequest" do
  arch arm: "-arm64"

  version "1.1.0"
  sha256 arm:   "94a9ceee24406de975c62bf8e65f2ba028fcfa825d7b18be7798dec4c4c38ce4",
         intel: "f1113fa2da53fdb6fe5cf92a28a7addbbb5cdbb2faa45d412b74c795a2b01858"

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
