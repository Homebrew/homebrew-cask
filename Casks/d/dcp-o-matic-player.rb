cask "dcp-o-matic-player" do
  version "2.16.72"
  sha256 "c7389b38889af83761f7e7609bcad8be75d563466fa5705f5a2bea4de5f5be4a"

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
