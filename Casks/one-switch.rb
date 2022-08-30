cask "one-switch" do
  version "1.26.1,372"
  sha256 "0c2783be9c22714399b07de9554a5f649f3e469b1b54bc81103def657604f9c0"

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
