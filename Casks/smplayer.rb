cask "smplayer" do
  version "21.10.0"
  sha256 "50e196d533565e161b2b543ce157489bc0d91bb364cc4e599408f8dfb7247a13"

  url "https://github.com/smplayer-dev/smplayer/releases/download/v#{version}/smplayer-#{version}.dmg",
      verified: "github.com/smplayer-dev/smplayer/"
  name "SMPlayer"
  desc "Media player with built-in codecs"
  homepage "https://www.smplayer.info/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SMPlayer.app"

  zap trash: [
    "~/Library/Preferences/info.smplayer.SMPlayer.plist",
    "~/Library/Saved Application State/info.smplayer.SMPlayer.savedState",
  ]
end
