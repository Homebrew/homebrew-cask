cask "houdahspot" do
  version "6.2.3,826"
  sha256 "dbed8718b7523caa1abcee98bfe6ce9cc185fe5f267f9525eb97141ab84d9c59"

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
