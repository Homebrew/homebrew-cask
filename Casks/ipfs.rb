cask "ipfs" do
  version "0.23.0"
  sha256 "2ddfec0f2febb9d37225e30021b7ca2a5744044314acc718c92cc7a92f78c1f2"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/IPFS-Desktop-#{version}.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater/",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
