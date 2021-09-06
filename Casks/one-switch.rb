cask "one-switch" do
  version "1.21,322"
  sha256 "6618e0cbcdc4dd6dc32703303a176aac919f9b3c840938df99d1c7241904ccb9"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
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
