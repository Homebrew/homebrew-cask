cask "ipfs-desktop" do
  version "0.50.1"
  sha256 "d06f4a74f9a368300f653d71c9bb0145a8740ac36c5f14a3f4c818975dbb067b"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}-mac.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
