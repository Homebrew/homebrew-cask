cask "one-switch" do
  version "1.20.1,317"
  sha256 "f6e6ea6a79dcf0da6c052a18afde49fc1a21dea7062fec487b0f441cbe4d8271"

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
