cask "ipfs" do
  version "0.20.0"
  sha256 "b9d1e240be9c3da5c0b4af38845dd89fc05ddd097faa5d163ae79b33abe9da5c"

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
