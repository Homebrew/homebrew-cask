cask "tribler" do
  version "7.14.0"
  sha256 "256b3515d2c750e331e913c30f889f44585c74fed869d1fa22b0b7d67d7312d5"

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
