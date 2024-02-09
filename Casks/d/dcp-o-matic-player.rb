cask "dcp-o-matic-player" do
  version "2.16.75"
  sha256 "7bde5dec9c2d8d994ea18e45f9a73f73ba105c6fdc8f35bd1b2e9f78f1012b7f"

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
