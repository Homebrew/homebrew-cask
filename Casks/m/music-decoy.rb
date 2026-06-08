cask "music-decoy" do
  version "1.2"
  sha256 "fbe22ccd809bec5694409f1e304d76e5b941ab19a9a218348416a039f30883b0"

  url "https://github.com/FuzzyIdeas/MusicDecoy/releases/download/v#{version}/MusicDecoy.zip",
      verified: "github.com/FuzzyIdeas/MusicDecoy/"
  name "Music Decoy"
  desc "Music app blocker utility"
  homepage "https://lowtechguys.com/musicdecoy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Music Decoy.app"

  # No zap stanza required
end
