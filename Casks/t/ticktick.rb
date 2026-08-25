cask "ticktick" do
  version "8.0.81,914"
  sha256 "73a108872d5092717db936839847a31a56c4a044fa1a3490e2bd7b50095f7c8e"

  url "https://download.ticktick.app/download/mac/TickTick_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "download.ticktick.app/download/mac/"
  name "TickTick"
  desc "To-do & task list manager"
  homepage "https://www.ticktick.com/"

  livecheck do
    url "https://pull.ticktick.com/mac/release_note/mac_appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "TickTick.app"

  zap trash: [
    "~/Library/Application Scripts/com.TickTick.task.mac.*",
    "~/Library/Application Support/com.TickTick.task.mac",
    "~/Library/Caches/com.TickTick.task.mac",
    "~/Library/Caches/TickTick",
    "~/Library/Containers/com.TickTick.task.mac.*",
    "~/Library/Group Containers/75TY9UT8AY.com.TickTick.task.mac",
    "~/Library/Preferences/com.TickTick.task.mac.plist",
    "~/Library/Saved Application State/com.TickTick.task.mac.savedState",
  ]
end
