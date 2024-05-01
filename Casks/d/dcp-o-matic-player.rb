cask "dcp-o-matic-player" do
  version "2.16.82"
  sha256 "3f3526de836e71ad715e1d5ee7337a37fb59c5f3b8b14777585f6cb3f7eb712c"

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
