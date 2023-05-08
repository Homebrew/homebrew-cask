cask "music-miniplayer" do
  version "1.8"
  sha256 :no_check

  url "https://marioaguzman.github.io/musicminiplayer/updater/Music%20MiniPlayer.zip"
  name "Music MiniPlayer"
  desc "Replica of the classic iTunes MiniPlayer to control Apple Music"
  homepage "https://marioaguzman.github.io/musicminiplayer/"

  auto_updates true

  app "Music MiniPlayer.app"

  zap trash: [
    "~/Library/Preferences/com.marioaguzman.Music-MiniPlayer.plist",
    "~/Library/Saved Application State/com.marioaguzman.Music-MiniPlayer.savedState",
    "~/Library/Caches/com.marioaguzman.Music-MiniPlayer",
  ]
end
