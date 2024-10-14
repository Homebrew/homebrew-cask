cask "dcp-o-matic-player" do
  version "2.16.95"
  sha256 "569808c670568a6a348b4cd428a3e8e90ebb1ed04ab30afc5da516d466545f7e"

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
