cask "dcp-o-matic-player" do
  version "2.18.12"
  sha256 "22a7acb00f03639ce2a25b27d69a138eebf304672ccc09462720ca9b7aad9b9d"

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
