cask "one-switch" do
  version "1.27,374"
  sha256 "0933f0a9bb4c2654f0fd04871f56b6ec46e0cd9f1ea7980a04b963ca2721ab8e"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.csv.second}.zip"
  name "One Switch"
  desc "All system and utility switches in one place"
  homepage "https://fireball.studio/oneswitch"

  livecheck do
    url "https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "One Switch.app"
end
