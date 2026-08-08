cask "dcp-o-matic-player" do
  version "2.19.0"
  sha256 "c6b2d96368ec7ca872cddba37dc054604d3d61ecec8c0a455bf76ae0b6e540cd"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Player.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.player.plist"
end
