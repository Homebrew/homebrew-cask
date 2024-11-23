cask "dcp-o-matic-player" do
  version "2.16.98"
  sha256 "4388cde73648889335eb58a9ef785bfa5a79f0e0411986859926cc19d77e0ad3"

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
