cask "dcp-o-matic-player" do
  version "2.16.8"
  sha256 "4ab420792607615e91d67f30e19bed86cc5126756dec681e762364fd9f4d0bf7"

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
