cask "dcp-o-matic-player" do
  version "2.18.44"
  sha256 "65e6d01da90a704727ed41134580b85af95148083a34a7d4a80be19c5f0d5002"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
