cask "dcp-o-matic-player" do
  version "2.16.90"
  sha256 "b3d798a5c90edd52226c2a62d4d2ec7772cad8c353a0ee3f5cd5fcf37972de02"

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
