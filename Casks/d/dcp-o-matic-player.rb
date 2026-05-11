cask "dcp-o-matic-player" do
  version "2.18.40"
  sha256 "c5225317733d3bf108e9a9fc499b86927bf8aa9579ceece69c7fdba0c84e4d1d"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
