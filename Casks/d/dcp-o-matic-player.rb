cask "dcp-o-matic-player" do
  version "2.16.83"
  sha256 "6cdf3cf87870ab341ff18ed47697a278ae3fce38fb445ef30fd19f5ceb9eb4bf"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
