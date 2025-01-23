cask "dcp-o-matic-player" do
  version "2.18.6"
  sha256 "f5ab7839e9f554a5fefead103eb7c1068bc012bf2b6c35e23d5e562debc28c9d"

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
