cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "8448668034e68a38c52b3c1cc8bd875737795a1e4ae5fc214e439507ce11e00c",
         intel: "98b634d30521527510ef526b23ffdae94cb4ef79a91d771a5329b6320430f39b"

  url "https://github.com/n8n-io/nod/releases/download/nod-v#{version}/nod-#{arch}.dmg"
  name "Nod"
  desc "Personal AI agent"
  homepage "https://nod.n8n.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Nod.app"

  uninstall quit: "dev.nod.desktop"

  zap trash: [
    "~/.nod-desktop",
    "~/Library/Application Support/nod",
    "~/Library/Caches/dev.nod.desktop",
    "~/Library/Caches/dev.nod.desktop.ShipIt",
    "~/Library/Preferences/dev.nod.desktop.plist",
  ]
end
