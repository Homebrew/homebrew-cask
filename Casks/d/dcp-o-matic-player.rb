cask "dcp-o-matic-player" do
  version "2.16.96"
  sha256 "6d0069c3fe42968bdcca3cedf67293389a087b5834bd5d8c7b24156635cd2fac"

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
