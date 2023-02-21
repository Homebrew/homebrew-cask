cask "dcp-o-matic-player" do
  version "2.16.42"
  sha256 "69b4e730b31478358c27aad7db94afa0012135f7a25d53cc03244036a7f70ef2"

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
