cask "dcp-o-matic-player" do
  version "2.16.34"
  sha256 "d6a4234096e62b17f8b9a8c31b272d7bfdf88d1c48b4ab64c7a161a3d99a8f97"

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
