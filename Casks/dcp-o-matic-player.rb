cask "dcp-o-matic-player" do
  version "2.16.17"
  sha256 "c3c0378426dda6053438d455d12f2967502ed823917037cb02ece0e5e7f5f4de"

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
