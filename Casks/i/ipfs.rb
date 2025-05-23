cask "ipfs" do
  version "0.43.0"
  sha256 "e922486adbcd332fa63d4201ff7636592cc6b1df15e6823bd62b7aba403c99d9"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}-mac.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
