cask "harvest" do
  version "3.0.12"
  sha256 "a825312b359125ded539d738decf0bc7d8e17f21cab8d063a3ebab5dbebcc5b2"

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
