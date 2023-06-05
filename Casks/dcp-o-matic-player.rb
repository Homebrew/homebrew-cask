cask "dcp-o-matic-player" do
  version "2.16.58"
  sha256 "b44de3bf7d214ede8d552c15a5c472b7a8ededba2e574711679f2359ed3942ff"

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
