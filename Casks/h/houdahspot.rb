cask "houdahspot" do
  version "6.7.2,13336764-a43c-4cd0-b238-4d63d468b3f4"
  sha256 "617040190e6885af5c0f7c8edeea8cf88299250170f68742ccb8d5658a95fab1"

  url "https://dl.houdah.com/houdahSpot/updates/cast_assets/#{version.csv.second}/HoudahSpot_#{version.csv.first}.dmg"
  name "HoudahSpot"
  desc "File searching application"
  homepage "https://www.houdah.com/houdahSpot/"

  livecheck do
    url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.php"
    regex(%r{/(\h+(?:-\h+)+)/HoudahSpot[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

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
