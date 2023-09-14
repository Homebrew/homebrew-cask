cask "dcp-o-matic-player" do
  version "2.16.64"
  sha256 "359d2d5a73b720ab4f2c286ed27bcf5ca198ba5ed844a3560be014028bd6c2c3"

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
