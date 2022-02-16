cask "ipfs" do
  version "0.19.2"
  sha256 "278af5d1ac0482b45a6640aaabfb2e104e33f87bc7e702405d890cfb4ea6a448"

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
