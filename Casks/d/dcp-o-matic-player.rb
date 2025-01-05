cask "dcp-o-matic-player" do
  version "2.18.2"
  sha256 "3d9aaa9bef4a7c947083a30a6654f0e3ff7d256cfb3ebaad24437b47828db8a4"

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
