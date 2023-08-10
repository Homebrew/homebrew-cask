cask "ticktick" do
  version "4.5.61, 270"
  sha256 "c40fde50e2e489ba696eee04b1c611df3f4a20f838084adebee63cf4c01ab8ed"

  url "https://ticktick-download-mac.s3.amazonaws.com/download/mac/TickTick_#{version.csv.first}_#{version.csv.second.gsub!(' ', '%20')}.dmg",
      verified: "ticktick-download-mac.s3.amazonaws.com/"
  name "TickTick"
  desc "To-do & task list manager"
  homepage "https://www.ticktick.com/home"

  livecheck do
    url "https://www.ticktick.com/static/getApp/download?type=mac"
    strategy :header_match do |headers|
      match = headers["location"].match(/TickTick[._-]v?(\d+(?:\.\d+)+)[_-](\s?\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TickTick.app"

  zap trash: [
    "~/Library/Application Scripts/com.TickTick.task.mac.MainWidget",
    "~/Library/Application Scripts/com.TickTick.task.mac.TickTick-Safari-Extension",
    "~/Library/Application Scripts/com.TickTick.task.mac.TickTick-Today-Widget",
    "~/Library/Application Scripts/com.TickTick.task.mac.TickTick-WidgetConfiguration-Extension",
    "~/Library/Application Support/com.TickTick.task.mac",
    "~/Library/Caches/TickTick",
    "~/Library/Caches/com.TickTick.task.mac",
    "~/Library/Containers/com.TickTick.task.mac.MainWidget",
    "~/Library/Containers/com.TickTick.task.mac.TickTick-Safari-Extension",
    "~/Library/Containers/com.TickTick.task.mac.TickTick-Today-Widget",
    "~/Library/Containers/com.TickTick.task.mac.TickTick-WidgetConfiguration-Extension",
    "~/Library/Group Containers/75TY9UT8AY.com.TickTick.task.mac",
    "~/Library/Preferences/com.TickTick.task.mac.plist",
    "~/Library/Saved Application State/com.TickTick.task.mac.savedState",
  ]
end
