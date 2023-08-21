cask "dcp-o-matic-player" do
  version "2.16.62"
  sha256 "fc86f549d83a1dc41503a7879e7c01a819a26c9581025dfb352ff81a96fb5270"

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
