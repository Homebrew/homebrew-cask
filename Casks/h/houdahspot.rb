cask "houdahspot" do
  version "6.8.4,a0b1d3c4-dff8-4f7d-b39e-4caed1924756"
  sha256 "2dfda1d96451680781fa5dff8c8869efe0bab076f6b3c573404d0bca03dcb047"

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
  depends_on :macos

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
