cask "dcp-o-matic-player" do
  version "2.16.29"
  sha256 "9e2da2bc996bdfe50fbdec27ddb63087e8099f7d65e9dbafe6c0d1f62f5cc145"

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
