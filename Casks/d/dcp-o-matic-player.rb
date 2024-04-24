cask "dcp-o-matic-player" do
  version "2.16.81"
  sha256 "3443bc49379fba227e142f40b6347e0e2ba9da4ae118dda4f58670fc0ee4359f"

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
