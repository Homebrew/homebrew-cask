cask "dcp-o-matic-player" do
  version "2.16.24"
  sha256 "4217a60ec00fe87fafb5f5511ccfd4c9d171515064cc3c1c9ad1a47a5f5b0875"

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
