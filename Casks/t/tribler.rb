cask "tribler" do
  version "7.13.1"
  sha256 "655ce0d6f2828fd0657bdbffa61cb06e369f51bc9690502dc3159abbaf1a528d"

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg",
      verified: "github.com/Tribler/tribler/"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tribler.app"
end
