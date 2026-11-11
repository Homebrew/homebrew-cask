cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "825a13bac010f6f0f31d72cfec3960f70c6b871176e91dcaf4a9429e9927454d",
         intel: "c0dec067d215ff403f72fe030af5c5cf53b6e47e5ef1eb6f88d3f4ca7722021b"

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
