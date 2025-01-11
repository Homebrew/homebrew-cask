cask "music-decoy" do
  version "1.1"
  sha256 "d8cc0121ced173bc1e7f38e34b514177c2680288405e399829dca8d729584f98"

  url "https://github.com/FuzzyIdeas/MusicDecoy/releases/download/v#{version}/MusicDecoy.zip",
      verified: "github.com/FuzzyIdeas/MusicDecoy/"
  name "Music Decoy"
  desc "Music app blocker utility"
  homepage "https://lowtechguys.com/musicdecoy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Music Decoy.app"

  # No zap stanza required
end
