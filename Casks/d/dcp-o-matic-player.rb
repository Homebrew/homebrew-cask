cask "dcp-o-matic-player" do
  version "2.18.45"
  sha256 "31444f497fa10fba2bae4d7eab17bf6a6dbb20adced878a61ad7517c64c631b2"

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
