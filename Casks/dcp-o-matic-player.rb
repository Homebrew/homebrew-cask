cask "dcp-o-matic-player" do
  version "2.16.10"
  sha256 "b643a765a273dc5c842407dc56e13c939a76aa960fc2b29029e8dc11c50bd4ea"

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
