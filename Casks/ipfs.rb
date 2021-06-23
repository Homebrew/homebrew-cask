cask "ipfs" do
  version "0.16.0"
  sha256 "6edd12cb29b270748d0cfb8c9dfd99b2afacd51a687a2d2b4e83b5671fe74af1"

  url "https://github.com/ipfs-shipyard/ipfs-desktop/releases/download/v#{version}/IPFS-Desktop-#{version}.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs-shipyard/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "IPFS Desktop.app"
end
