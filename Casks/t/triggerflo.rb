cask "triggerflo" do
  version "2.5.0"
  sha256 "398097face4be0aae7d1b72f79cf0bf2489d77ed65c5911019f9473fe054565d"

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
