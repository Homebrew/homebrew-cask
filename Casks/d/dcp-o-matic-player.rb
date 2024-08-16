cask "dcp-o-matic-player" do
  version "2.16.91"
  sha256 "f6fb0e77d44b07398fa49e32b3d14556392d9be27fa4bf451a193e66a6f63f4c"

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
