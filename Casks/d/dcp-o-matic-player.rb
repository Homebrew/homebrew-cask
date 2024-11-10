cask "dcp-o-matic-player" do
  version "2.16.97"
  sha256 "c1ba898a3450027cf7906268dbb08e9f43ed19ba38c251c383521c35ee8d8ed3"

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
