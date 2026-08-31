cask "triggerflo" do
  version "2.1.0"
  sha256 "eebaa625666da57ff720d5934cdbfd8411fc43f0767619723da07dc5c22c15c0"

  url "https://triggerflo.app/downloads/TriggerFlo-#{version}.dmg"
  name "TriggerFlo"
  desc "Focus timer and Kanban board for tracking tasks"
  homepage "https://triggerflo.app/"

  livecheck do
    url "https://triggerflo.app/downloads/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

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
