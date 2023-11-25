cask "dcp-o-matic-player" do
  version "2.16.68"
  sha256 "1977dce6cb9a46234c239a692ffa999de721de28053cf41faa72f74092b7eca3"

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
