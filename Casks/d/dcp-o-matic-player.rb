cask "dcp-o-matic-player" do
  version "2.18.19"
  sha256 "4eb14ab8b75621c2e975ca27115a521324959dfdae09198e0e2af6f72de7227d"

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
