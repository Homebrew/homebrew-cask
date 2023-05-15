cask "dcp-o-matic-player" do
  version "2.16.56"
  sha256 "939bc5ade693f3f5ed11f5a58d4590562a781e12ce8e3385c1ec1630167b1ba4"

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
