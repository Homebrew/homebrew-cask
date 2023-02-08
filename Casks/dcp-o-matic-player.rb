cask "dcp-o-matic-player" do
  version "2.16.41"
  sha256 "f89c40a8323e1cf2413d36279ee5332924eed9204ef948c2e418990166e3ebf4"

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
