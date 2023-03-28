cask "dcp-o-matic-player" do
  version "2.16.50"
  sha256 "e62024dc5d84f5b6cb05353349e994e7b449c8d3fea23b483fadf9cd3facfe7f"

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
