cask "dcp-o-matic-player" do
  version "2.18.5"
  sha256 "cc84f35caaacc730629ad31b3768493305512e43f75fa5fa2ce39b25990e67d1"

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
