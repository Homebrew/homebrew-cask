cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "9658019a0079faaa68cc01cd35d44e8b346ec3423930ca06fc3798d90476a3db",
         intel: "989eb96d158cf7bf1bbcbd4bc4f014fa8a2ec9bc9ec01148685e751347291e74"

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
