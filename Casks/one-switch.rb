cask "one-switch" do
  version "1.31,392"
  sha256 "ba090841303e008c499b4d2ec91854d42f01245becb6e4a1bbec23be7d353c1f"

  url "https://fireball.studio/media/uploads/files/OneSwitchOfficial-#{version.csv.second}.dmg"
  name "One Switch"
  desc "All system and utility switches in one place"
  homepage "https://fireball.studio/oneswitch"

  livecheck do
    url "https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml"
    strategy :sparkle
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
