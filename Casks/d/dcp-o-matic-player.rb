cask "dcp-o-matic-player" do
  version "2.16.61"
  sha256 "8a381ecbc15889e5cb7fff27b0130dc073062e918b348ba31406f2515218215b"

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
