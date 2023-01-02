cask "dcp-o-matic-player" do
  version "2.16.38"
  sha256 "2b3d8dc04bc6b07581ad14442cf1914a6d657a0a1b407ac2d33f61f91f186fb0"

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
