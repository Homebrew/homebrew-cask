cask "dcp-o-matic-player" do
  version "2.16.99"
  sha256 "f0bd70322052e7fbc6691f2164172dfb6ce9dcfa00ac74dfe3dc88460a4c0a37"

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
