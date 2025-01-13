cask "dcp-o-matic-player" do
  version "2.18.4"
  sha256 "86fd275d20373c789aee1d7af915c6bb0e84ce86d77bfcbe5acef13e9975ba5d"

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
