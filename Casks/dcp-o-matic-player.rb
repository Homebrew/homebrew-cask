cask "dcp-o-matic-player" do
  version "2.16.32"
  sha256 "58706211ae234aa3aac391aff6f8e0436b71352d670e492d4f062e29f3092265"

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
