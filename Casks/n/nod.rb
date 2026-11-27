cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "439abb676def327aacd6adab12c3552e6521abdf00b24d760c694eaf1e9c3164",
         intel: "3d3eb2a999831bf81b1f3d0f9ad9440b43960034f20037dd857fbcb0975d382f"

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
    "~/Library/HTTPStorages/dev.nod.desktop",
    "~/Library/Preferences/dev.nod.desktop.plist",
  ]
end
