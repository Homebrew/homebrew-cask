cask "one-switch" do
  version "1.34.1,412"
  sha256 "0c3849843eca03bc2b2f4c8d0914acb8e8a7bec4f4c649ecf47c5dc94d9fd79e"

  url "https://fireball.studio/media/uploads/files/OneSwitchOfficial-#{version.csv.second}.dmg"
  name "One Switch"
  desc "All system and utility switches in one place"
  homepage "https://fireball.studio/oneswitch"

  livecheck do
    url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitchOfficial.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "One Switch.app"

  zap trash: [
    "~/Library/Application Support/One Switch",
    "~/Library/Application Support/studio.fireball.OneSwitch",
    "~/Library/Caches/studio.fireball.OneSwitch",
    "~/Library/HTTPStorages/studio.fireball.OneSwitch",
    "~/Library/HTTPStorages/studio.fireball.OneSwitch.binarycookies",
    "~/Library/Preferences/studio.fireball.OneSwitch.plist",
    "~/Library/WebKit/studio.fireball.OneSwitch",
  ]
end
