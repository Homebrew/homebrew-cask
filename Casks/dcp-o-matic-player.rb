cask "dcp-o-matic-player" do
  version "2.16.5"
  sha256 "aaac9049c7fa353b3a81eace6bb928d3d28e3cdab57db36e0ee7b0e76b022ad9"

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
