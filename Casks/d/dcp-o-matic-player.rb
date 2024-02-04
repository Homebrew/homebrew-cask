cask "dcp-o-matic-player" do
  version "2.16.74"
  sha256 "ed6aefb61dac9d7d631c7a7130ff4d79266fcc78e6532faf7dfef73c544f5b89"

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
