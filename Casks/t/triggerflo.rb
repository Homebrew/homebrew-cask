cask "triggerflo" do
  version "2.2.1"
  sha256 "e5f43ec2d65031843533edd767dfcf94004d719ec4d17c3707b7acda64c2c054"

  url "https://triggerflo.app/downloads/TriggerFlo-#{version}.dmg"
  name "TriggerFlo"
  desc "Focus timer and Kanban board for tracking tasks"
  homepage "https://triggerflo.app/"

  livecheck do
    url "https://triggerflo.app/downloads/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "TriggerFlo.app"

  zap trash: [
    "~/Library/Application Scripts/app.triggerflo",
    "~/Library/Application Scripts/group.app.triggerflo",
    "~/Library/Application Support/app.triggerflo",
    "~/Library/Caches/app.triggerflo",
    "~/Library/Containers/app.triggerflo",
    "~/Library/Group Containers/group.app.triggerflo",
    "~/Library/HTTPStorages/app.triggerflo",
    "~/Library/Preferences/app.triggerflo.plist",
    "~/Library/Preferences/group.app.triggerflo.plist",
    "~/Library/Saved Application State/app.triggerflo.savedState",
  ]
end
