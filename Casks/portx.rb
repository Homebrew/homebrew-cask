cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.12,10.41"
  sha256 arm:   "4E81CD02596F45D3F44895BFEFD5D9F484E7321F383DECA22FA59463AA8C34C4",
         intel: "C816838A2223D631CCC7982D0F26194423FBE5A7ED249AB29E6B9607C9ABAE43"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
