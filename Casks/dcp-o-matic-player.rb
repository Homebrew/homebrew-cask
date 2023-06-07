cask "dcp-o-matic-player" do
  version "2.16.59"
  sha256 "6738657060175827ae495f3babb1323a4a04c56acd61a6b5231d3b73a84f3041"

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
