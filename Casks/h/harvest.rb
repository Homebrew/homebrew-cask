cask "harvest" do
  version "3.0.6"
  sha256 "e17189caca038131da6a7fc8613e22ad2757e468ec6ce2d9b65e95ada366f9c6"

  url "https://downloads.harvestfiles.com/harvest-desktop/darwin/universal/Harvest-darwin-universal-#{version}.zip",
      verified: "downloads.harvestfiles.com/harvest-desktop/"
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
