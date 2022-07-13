cask "dcp-o-matic-player" do
  version "2.16.18"
  sha256 "68d62091cc4bb47c13e3f063218fe961438bd18e139e543773fc3cc157397532"

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
