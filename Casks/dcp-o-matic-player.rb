cask "dcp-o-matic-player" do
  version "2.16.26"
  sha256 "441cf0b662a5b2cb06b8de41546b590fbed9825d66e41de9919ba534469c3f74"

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
