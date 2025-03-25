cask "dcp-o-matic-player" do
  version "2.18.15"
  sha256 "e67345a663389786a4271a65fee2a326105af9df90e111e3b5fdab1cb26fbf76"

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
