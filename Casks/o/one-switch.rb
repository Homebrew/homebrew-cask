cask "one-switch" do
  version "1.35.4,438"
  sha256 "1dd2dea29298ff6731539613bf30e2521cb1f10e4e9d562409abf90c3dfbc9b6"

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
