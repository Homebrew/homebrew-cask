cask "dcp-o-matic-player" do
  version "2.16.73"
  sha256 "0416449fe20b6d3d621bf79a784e6d2752e4b395c15cb63505d5c958b7c3de95"

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
