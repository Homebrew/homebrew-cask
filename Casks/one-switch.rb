cask "one-switch" do
  version "1.26,369"
  sha256 "e4dcc1640524c7a3c1d6c7208406abc1ff4f3c4dfc67f5d6f4ed90fa6f90dab0"

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
