cask "dcp-o-matic-player" do
  version "2.16.79"
  sha256 "654c1107059959ad9e1fc9d6d996c03f470eea2debc4806d7924a3c5b35ae9af"

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
