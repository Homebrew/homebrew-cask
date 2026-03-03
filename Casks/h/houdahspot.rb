cask "houdahspot" do
  version "6.7.5,99ad9622-4c9b-4f28-a443-312bc1fba945"
  sha256 "c89e236ac6ce3de2d57bb476f9b2f54bac42250eb53b75958f0c95eef7f606d0"

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
