cask "dcp-o-matic-player" do
  version "2.16.78"
  sha256 "eaed2f0bfb0aaece8210cea7abe75aaeeb20cdcaff61785846418edecfcf5ad4"

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
