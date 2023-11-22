cask "dcp-o-matic-player" do
  version "2.16.67"
  sha256 "f98f46eb6d336b187effc7615888ee5486544717da55b6aee90d2bc7b59291e5"

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
