cask "dcp-o-matic-player" do
  version "2.18.8"
  sha256 "78346f28fd069bef1446c9d3c1038e469f92ed2baa205ca1f4ae4e8e252c469e"

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
