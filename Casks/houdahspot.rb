cask "houdahspot" do
  version "6.1.10,721"
  sha256 "1ac332ae83538418c5b7901b9e94399360bd189dc9e299d30357bb5c03d99cb4"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version.csv.first}.zip"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  livecheck do
    url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "HoudahSpot.app"

  zap trash: [
    "~/Library/Application Scripts/com.houdah.HoudahSpot4.FinderExtension",
    "~/Library/Application Scripts/com.houdah.HoudahSpot4.HoudahSpotQuickAction",
    "~/Library/Application Support/com.houdah.HoudahSpot4",
    "~/Library/Caches/com.houdah.HoudahSpot4",
    "~/Library/Containers/com.houdah.HoudahSpot4.FinderExtension",
    "~/Library/Containers/com.houdah.HoudahSpot4.HoudahSpotQuickAction",
    "~/Library/HTTPStorages/com.houdah.HoudahSpot4",
    "~/Library/Mail/Bundles/HoudahSpotMailPlugin.mailbundle",
    "~/Library/Preferences/com.houdah.HoudahSpot4.plist",
  ]
end
