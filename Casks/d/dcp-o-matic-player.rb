cask "dcp-o-matic-player" do
  version "2.16.70"
  sha256 "192843d850bc8aadc36332bb55d892662e87522fa28349b5437afd2bbe9a5c1d"

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
