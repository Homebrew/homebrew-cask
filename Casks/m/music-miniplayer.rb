cask "music-miniplayer" do
  version "1.10"
  sha256 :no_check

  url "https://marioaguzman.github.io/musicminiplayer/updater/Music%20MiniPlayer.dmg"
  name "Music MiniPlayer"
  desc "Replica of the iTunes MiniPlayer"
  homepage "https://marioaguzman.github.io/musicminiplayer/"

  livecheck do
    url "https://marioaguzman.github.io/musicminiplayer/updater/musicminiplayerappcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Music MiniPlayer.app"

  zap trash: [
    "~/Library/Caches/com.marioaguzman.Music-MiniPlayer",
    "~/Library/Preferences/com.marioaguzman.Music-MiniPlayer.plist",
    "~/Library/Saved Application State/com.marioaguzman.Music-MiniPlayer.savedState",
  ]
end
