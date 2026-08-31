cask "harvest" do
  version "3.0.13"
  sha256 "8ce01b9a10b8a2932400bcba3c8ed00fda69a92da4930a5e870661f15444bbb1"

  url "https://downloads.harvestfiles.com/harvest-desktop/darwin/universal/Harvest-darwin-universal-#{version}.zip"
  name "Harvest"
  desc "Time tracking application"
  homepage "https://www.getharvest.com/apps/mac"

  livecheck do
    url "https://downloads.harvestfiles.com/harvest-desktop/darwin/universal/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Harvest.app"

  zap trash: [
    "~/Library/Application Scripts/68MH8658M5.group.com.getharvest.Harvest",
    "~/Library/Application Support/Harvest",
    "~/Library/Caches/com.getharvest.harvestxapp",
    "~/Library/Caches/com.getharvest.harvestxapp.ShipIt",
    "~/Library/Caches/Harvest",
    "~/Library/Group Containers/68MH8658M5.group.com.getharvest.Harvest",
    "~/Library/HTTPStorages/com.getharvest.harvestxapp",
    "~/Library/Logs/Harvest",
    "~/Library/Preferences/com.getharvest.harvestxapp.plist",
  ]
end
