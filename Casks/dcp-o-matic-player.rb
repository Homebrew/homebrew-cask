cask "dcp-o-matic-player" do
  version "2.16.28"
  sha256 "ff5c3487bf81294c6f202a981340081c99a668284aa382093294f6265670291f"

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
