cask "dcp-o-matic-player" do
  version "2.18.9"
  sha256 "9aefacbeb58d14bdf01701cc5aaf0da75026ded0748291d6789d9e062b163e63"

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
