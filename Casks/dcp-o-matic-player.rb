cask "dcp-o-matic-player" do
  version "2.16.44"
  sha256 "a8fb5e4b0e208e0e0e1ccca4fc38f77bac5252bd90ac648381c1eca5fb38ee2f"

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
