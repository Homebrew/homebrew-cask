cask "dcp-o-matic-player" do
  version "2.16.69"
  sha256 "1c2465e9f00751d92c64205efe6c327032fa56e117f0143c081e614551a0300e"

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
