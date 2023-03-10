cask "dcp-o-matic-player" do
  version "2.16.47"
  sha256 "f9a343979646da147a0a8ca67ebe1b6bbef4609fb84422b0aaac3ed9bf1a35cb"

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
