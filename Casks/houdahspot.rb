cask "houdahspot" do
  version "6.2.6,790"
  sha256 "c41fbf3d8bd645bcc1c12213f7a0c60f56db529c6cd33999c5c12e0697837ffa"

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
