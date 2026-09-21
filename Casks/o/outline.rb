cask "outline" do
  version "6.2609.3"
  sha256 "fe08a0653caaa55ff0b79a3361a1eb3c64ebc87810f71ffac75bb33dbe20afd6"

  url "https://static.outline.app/direct/main/Outline_#{version}.zip"
  name "Outline"
  desc "Note taking app"
  homepage "https://www.outline.app/"

  livecheck do
    url "https://static.outline.app/direct/main/update_channel.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Outline.app"

  uninstall quit: "com.gorillized.outlinemac.standalone"

  zap trash: [
    "~/Library/Application Scripts/6WN928JT76.com.gorillized",
    "~/Library/Application Scripts/com.gorillized.outlinemac.standalone.extension",
    "~/Library/Application Scripts/com.gorillized.outlinemac.standalone.widget",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gorillized.outlinemac.standalone.sfl*",
    "~/Library/Application Support/com.gorillized.outlinemac.standalone",
    "~/Library/Application Support/Outline",
    "~/Library/Caches/com.gorillized.outlinemac.standalone",
    "~/Library/Containers/com.gorillized.outlinemac.standalone.extension",
    "~/Library/Containers/com.gorillized.outlinemac.standalone.widget",
    "~/Library/Group Containers/6WN928JT76.com.gorillized",
    "~/Library/HTTPStorages/com.gorillized.outlinemac.standalone",
    "~/Library/Outline",
    "~/Library/Preferences/com.gorillized.outlinemac.standalone.plist",
  ]
end
