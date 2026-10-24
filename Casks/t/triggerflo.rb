cask "triggerflo" do
  version "2.6.0"
  sha256 "bc80162e32a3f66d5301135ba9fe022fe70440bddf79aea290cbc1f53d1c088c"

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
    "~/Library/Application Scripts/app.triggerflo.TriggerFloTimerWidget",
    "~/Library/Application Scripts/group.app.triggerflo",
    "~/Library/Application Support/app.triggerflo",
    "~/Library/Caches/app.triggerflo",
    "~/Library/Containers/app.triggerflo",
    "~/Library/Containers/app.triggerflo.TriggerFloTimerWidget",
    "~/Library/Group Containers/group.app.triggerflo",
    "~/Library/HTTPStorages/app.triggerflo",
    "~/Library/Preferences/app.triggerflo.plist",
    "~/Library/Preferences/group.app.triggerflo.plist",
    "~/Library/Saved Application State/app.triggerflo.savedState",
  ]
end
