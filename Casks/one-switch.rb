cask "one-switch" do
  version "1.28,380"
  sha256 "5ee181bea58130c1bfca712352719d9534ad8b88643fa71fb1ea4ad5ccebfaab"

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
end
