cask "smplayer" do
  version "21.8.0.9999"
  sha256 "9265fe2bd2cf4eb9c47f77798fec5d58c93892c22dff7e2397f8865a970345be"

  url "https://github.com/smplayer-dev/smplayer/releases/download/v#{version}/smplayer-#{version}.dmg",
      verified: "github.com/smplayer-dev/smplayer/"
  name "SMPlayer"
  desc "Media player with built-in codecs"
  homepage "https://www.smplayer.info/"

  app "SMPlayer.app"

  zap trash: [
    "~/Library/Preferences/info.smplayer.SMPlayer.plist",
    "~/Library/Saved Application State/info.smplayer.SMPlayer.savedState",
  ]
end
