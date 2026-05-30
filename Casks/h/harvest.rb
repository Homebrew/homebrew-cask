cask "harvest" do
  version :latest
  sha256 :no_check

  url "https://downloads.harvestfiles.com/harvest-desktop/darwin/universal/Harvest-latest.zip",
      verified: "downloads.harvestfiles.com/harvest-desktop/"
  name "Harvest"
  desc "Time tracking application"
  homepage "https://www.getharvest.com/apps/mac"

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
