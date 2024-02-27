cask "tribler" do
  version "7.13.2"
  sha256 "cbcc92250ee185de2938b6b4055e3505780edfefa0f8facd5698d0efee5395bc"

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
