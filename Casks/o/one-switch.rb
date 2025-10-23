cask "one-switch" do
  version "1.35,427"
  sha256 "f4a1271021c914c9c0a864743f9faa074d7f8a7a2cdc4d241dd79a8c9ae520ee"

  url "https://fireball.studio/media/uploads/files/OneSwitchOfficial-#{version.csv.second}.dmg"
  name "One Switch"
  desc "All system and utility switches in one place"
  homepage "https://fireball.studio/oneswitch"

  livecheck do
    url "https://fireball.studio/api/release_manager/studio.fireball.OneSwitchOfficial.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "One Switch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/studio.fireball.oneswitch.sfl*",
    "~/Library/Application Support/One Switch",
    "~/Library/Application Support/studio.fireball.OneSwitch",
    "~/Library/Caches/studio.fireball.OneSwitch",
    "~/Library/HTTPStorages/studio.fireball.OneSwitch",
    "~/Library/HTTPStorages/studio.fireball.OneSwitch.binarycookies",
    "~/Library/Preferences/studio.fireball.OneSwitch.plist",
    "~/Library/WebKit/studio.fireball.OneSwitch",
  ]
end
