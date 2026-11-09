cask "dcp-o-matic-player" do
  version "2.19.2"
  sha256 "f7e3918cfd19d1adc1ddaa53f222c3f17c7f8e41de9c721d6eeb78f0344d6594"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on :macos

  app "DCP-o-matic #{version.major} Player.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.player.plist"
end
