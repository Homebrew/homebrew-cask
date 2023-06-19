cask "one-switch" do
  version "1.30,390"
  sha256 "e1c14a1e3ab2d358fb082e1a68bc9f62f1c94d2c47422b7b7ef74d6d8443ef68"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.csv.second}.zip"
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
