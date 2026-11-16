cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "c94e97b3451bb1a19a4cf896afa53c344388e1fbb9d2b05e46bcccfbd85011b9",
         intel: "725791b70ec6b0353d959809f0b1586ef1970128e86477aabfc0b22cc9a3a106"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.nod.desktop.sfl*",
    "~/Library/Application Support/nod",
    "~/Library/Caches/dev.nod.desktop",
    "~/Library/Caches/dev.nod.desktop.ShipIt",
    "~/Library/Preferences/dev.nod.desktop.plist",
  ]
end
