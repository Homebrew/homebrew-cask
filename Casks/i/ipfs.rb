cask "ipfs" do
  version "0.34.0"
  sha256 "39b7d13a7434e09c08424235d93f19a097db88bdde73ee069f0c2e24bf74e5a0"

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
