cask "dcp-o-matic-player" do
  version "2.18.17"
  sha256 "7ac48b5e7273b0c7316875eda63b6f97b9652fab527eaebd3b8510f613be55eb"

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
