cask "dcp-o-matic-player" do
  version "2.16.63"
  sha256 "b2cf290e399f644a24a0af5b2c842e437146eeb1eaa2a08256228e48aa08ecf6"

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
