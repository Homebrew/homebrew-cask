cask "dcp-o-matic-player" do
  version "2.18.11"
  sha256 "609952f2610fc8f3910751c12854dca740a1d7d5ceeb71fe34e34c6baefd2d05"

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
