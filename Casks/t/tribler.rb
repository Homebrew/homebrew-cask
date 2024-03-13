cask "tribler" do
  version "7.13.3"
  sha256 "2c5d539b5e3de4de8d3584fd0071cfbe911791c0fc048bd92649a8e91afd979e"

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
