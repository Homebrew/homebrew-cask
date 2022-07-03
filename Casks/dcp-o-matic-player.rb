cask "dcp-o-matic-player" do
  version "2.16.16"
  sha256 "764f8fe7aa5da9e10ca40c1251d8680be70b0eaa0c0c0ae410cf49d84ccac58e"

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
