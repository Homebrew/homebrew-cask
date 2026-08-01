cask "dcp-o-matic-player" do
  version "2.18.46"
  sha256 "16a4bd46a28d3210a9309235e373f27ac4534884ee75f7da908fa27e2338bae8"

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
