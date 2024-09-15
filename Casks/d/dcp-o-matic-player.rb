cask "dcp-o-matic-player" do
  version "2.16.92"
  sha256 "a1d047dc12ecb97041552cc7b44c19871738cdc1109099dca63c6451088cab61"

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
