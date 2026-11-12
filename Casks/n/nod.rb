cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "cce69ab1afd5dc0fd591614cc95f69e54f03d59836f5dcb29194daa0196d0feb",
         intel: "289ad1b1b3af0d8763cc65e6ac7a3dbee3fd786c228a49ce27f9c83af5cf71cb"

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
