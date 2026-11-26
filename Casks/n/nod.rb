cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.9.8"
  sha256 arm:   "e4aab207da458d8661d8c2bb65e55800ab62b31c3736dfb584447b2bf8d133d7",
         intel: "5c45ba9c5fd65871ee931d60fd5563aeb49ecdaceb7ecd3ec0d2a4cd86217e96"

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
