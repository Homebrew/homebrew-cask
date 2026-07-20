cask "music-decoy" do
  version "1.3"
  sha256 "14132d0a14057e3288f8c4446829e15daa512c17e8e85d5d4e396c3722ef128f"

  url "https://github.com/FuzzyIdeas/MusicDecoy/releases/download/v#{version}/MusicDecoy.zip",
      verified: "github.com/FuzzyIdeas/MusicDecoy/"
  name "Music Decoy"
  desc "Music app blocker utility"
  homepage "https://lowtechguys.com/musicdecoy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Music Decoy.app"

  # No zap stanza required
end
