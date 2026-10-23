cask "houdahspot" do
  version "6.8.5,afcbcf67-8e51-47a6-8b9d-a2cea4be06f6"
  sha256 "2691bc43efe35346170ca0983efc2261ebb703ea3727357fdfc95ebe50983158"

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
    "~/Library/Application Scripts/com.houdah.HoudahSpot4.FinderExtension",
    "~/Library/Application Scripts/com.houdah.HoudahSpot4.HoudahSpotQuickAction",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.houdah.houdahspot4.sfl*",
    "~/Library/Application Support/com.houdah.HoudahSpot4",
    "~/Library/Caches/com.houdah.HoudahSpot4",
    "~/Library/Containers/com.houdah.HoudahSpot4.FinderExtension",
    "~/Library/Containers/com.houdah.HoudahSpot4.HoudahSpotQuickAction",
    "~/Library/HTTPStorages/com.houdah.HoudahSpot4",
    "~/Library/Mail/Bundles/HoudahSpotMailPlugin.mailbundle",
    "~/Library/Preferences/com.houdah.HoudahSpot4.plist",
  ]
end
