cask "music-remote" do
  version "1.2"
  sha256 :no_check

  url "https://marioaguzman.github.io/musicremote/updater/Music%20Remote.dmg"
  name "Music Remote"
  desc "Remote application for Music.app"
  homepage "https://marioaguzman.github.io/musicremote/"

  livecheck do
    url "https://marioaguzman.github.io/musicremote/updater/musicremoteappcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Music Remote.app"

  zap trash: "~/Library/Preferences/com.marioaguzman.Music-Remote.plist"
end
