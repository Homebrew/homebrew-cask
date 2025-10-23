cask "one-switch" do
  version "1.35.1,428"
  sha256 "420134e5844da7f391ac74c9455475104fd61c1db1156d6bffe88b29a3267f7e"

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
