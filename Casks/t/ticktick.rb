cask "ticktick" do
  version "5.3.00,331"
  sha256 "cd518bc53ea34b1384338e076babadff22f93e6839ef21649b01ab2e70c1fcf6"

  url "https://ticktick-download-mac.s3.amazonaws.com/download/mac/TickTick_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "ticktick-download-mac.s3.amazonaws.com/"
  name "TickTick"
  desc "To-do & task list manager"
  homepage "https://www.ticktick.com/home"

  livecheck do
    url "https://www.ticktick.com/static/getApp/download?type=mac"
    strategy :header_match do |headers|
      match = headers["location"].match(/TickTick[._-]v?(\d+(?:\.\d+)+)[_-](\d+)\.dmg/i)
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
    "~/Library/Caches/com.TickTick.task.mac",
    "~/Library/Caches/TickTick",
    "~/Library/Containers/com.TickTick.task.mac.MainWidget",
    "~/Library/Containers/com.TickTick.task.mac.TickTick-Safari-Extension",
    "~/Library/Containers/com.TickTick.task.mac.TickTick-Today-Widget",
    "~/Library/Containers/com.TickTick.task.mac.TickTick-WidgetConfiguration-Extension",
    "~/Library/Group Containers/75TY9UT8AY.com.TickTick.task.mac",
    "~/Library/Preferences/com.TickTick.task.mac.plist",
    "~/Library/Saved Application State/com.TickTick.task.mac.savedState",
  ]
end
