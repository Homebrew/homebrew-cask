cask "dcp-o-matic-player" do
  version "2.16.57"
  sha256 "29a6a1846112a439d3b8202291a06343f8b56cdcf9176c8f48f0ef7372664966"

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
