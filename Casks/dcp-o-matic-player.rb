cask "dcp-o-matic-player" do
  version "2.16.36"
  sha256 "c0760c1a056f488f7c3d329bbe28e28e89b806d7480ff3bbceb0ebc2c9bdffd5"

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
