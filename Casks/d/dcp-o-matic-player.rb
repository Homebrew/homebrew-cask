cask "dcp-o-matic-player" do
  version "2.19.1"
  sha256 "270edb47911b25b2c686286eebb7aa8a7d8fed7274656358f7cd78dbb2c93b1f"

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
