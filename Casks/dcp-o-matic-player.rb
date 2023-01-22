cask "dcp-o-matic-player" do
  version "2.16.40"
  sha256 "523adc881906a3ea4e81b5ee16c700738bbe0e8c168f1b1c18142d98a9cf25cb"

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
