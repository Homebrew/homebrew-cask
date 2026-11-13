cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.7.4"
  sha256 arm:   "071d35ace836ff63391610ff28add07bd7daee9a11af554095963d80fc6e7f3d",
         intel: "77a549037f48fa7a8884e72f1dfc2d2b4ab11bcc9a07cfabe5175481dfeb965c"

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
