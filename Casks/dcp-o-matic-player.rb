cask "dcp-o-matic-player" do
  version "2.16.13"
  sha256 "dee369dc647df61f5331c500a81dc88100e98a88527d8cfa693cf39d34b3d889"

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
