cask "dcp-o-matic-player" do
  version "2.16.86"
  sha256 "21be74e3ac09263f18b052623e78b57bd110645202a1879e75764d8e9b58bad8"

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
