cask "houdahspot" do
  version "6.5.1"
  sha256 "7630a7d9cf0052a524312bed4aaf7fb4ec6b65a0fa03f2140613e13ee52ab4b7"

  url "https://dl.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  livecheck do
    url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "HoudahSpot.app"

  zap trash: [
    "~/Library/Application Scripts/com.houdah.HoudahSpot#{version.major}.FinderExtension",
    "~/Library/Application Scripts/com.houdah.HoudahSpot#{version.major}.HoudahSpotQuickAction",
    "~/Library/Application Support/com.houdah.HoudahSpot#{version.major}",
    "~/Library/Caches/com.houdah.HoudahSpot#{version.major}",
    "~/Library/Containers/com.houdah.HoudahSpot#{version.major}.FinderExtension",
    "~/Library/Containers/com.houdah.HoudahSpot#{version.major}.HoudahSpotQuickAction",
    "~/Library/HTTPStorages/com.houdah.HoudahSpot#{version.major}",
    "~/Library/Mail/Bundles/HoudahSpotMailPlugin.mailbundle",
    "~/Library/Preferences/com.houdah.HoudahSpot#{version.major}.plist",
  ]
end
