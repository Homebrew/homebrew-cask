cask "one-switch" do
  version "1.29,383"
  sha256 "385db8a0a8e0827ed0193745c6c0070e0afb074bd0b4a8acdd2c9d6cee620ce6"

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
