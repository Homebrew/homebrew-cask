cask "ticktick" do
  version "8.2.20,922"
  sha256 "f660311ecb45360dd64e7b7a8c895cf94bd94c49f26251a2212f1cdf16566a9a"

  url "https://download.ticktick.app/download/mac/TickTick_#{version.csv.first}_#{version.csv.second}.dmg"
  name "TickTick"
  desc "To-do & task list manager"
  homepage "https://www.ticktick.com/"

  livecheck do
    url "https://pull.ticktick.com/mac/release_note/mac_appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "TickTick.app"

  zap trash: [
    "~/Library/Application Scripts/75TY9UT8AY.com.TickTick.task.mac",
    "~/Library/Application Scripts/com.TickTick.task.mac.*",
    "~/Library/Application Support/bugsnag-shared-com.TickTick.task.mac",
    "~/Library/Application Support/com.TickTick.task.mac",
    "~/Library/Caches/bugsnag-shared-com.TickTick.task.mac",
    "~/Library/Caches/com.TickTick.task.mac",
    "~/Library/Caches/TickTick",
    "~/Library/Containers/com.TickTick.task.mac.*",
    "~/Library/Group Containers/75TY9UT8AY.com.TickTick.task.mac",
    "~/Library/HTTPStorages/com.TickTick.task.mac*",
    "~/Library/Preferences/com.TickTick.task.mac.plist",
    "~/Library/Saved Application State/com.TickTick.task.mac.savedState",
  ]
end
