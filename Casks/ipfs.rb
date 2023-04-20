cask "ipfs" do
  version "0.27.0"
  sha256 "2ca87583b55bea411ac30a77bd6ddbfbe27c3085efd353fe05cd11f2f33b2eed"

  url "https://github.com/ipfs/ipfs-desktop/releases/download/v#{version}/ipfs-desktop-#{version}-mac.dmg"
  name "IPFS Desktop"
  desc "Menu bar application for the IPFS peer-to-peer network"
  homepage "https://github.com/ipfs/ipfs-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "IPFS Desktop.app"

  zap trash: [
    "~/Library/Application Support/Caches/ipfs-desktop-updater/",
    "~/Library/Application Support/IPFS Desktop",
  ]
end
