cask "dcp-o-matic-player" do
  version "2.16.39"
  sha256 "235a62da17b4966bc4fd7d2181c5e8d5549e56c174c9c04bcd2fbc1296abfb1a"

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
