cask "dcp-o-matic-player" do
  version "2.16.60"
  sha256 "c2075e44049a6d92c1afadf6c27f7d90a8b9a5d3b99f9c6f015b3be85b144798"

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
