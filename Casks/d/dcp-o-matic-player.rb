cask "dcp-o-matic-player" do
  version "2.16.71"
  sha256 "a3f8b42d98ea2097200d35f655be22a6895ee50d5633a6526b61cc042ffe932b"

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
