cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "0e71b3801dfb3247d3dc1adda1d56d75bd2c0d0e8d43a9e9d008ca9cdba16af0",
         intel: "10d83b8409ca2e8f39cce04fc7167f5b1b5be053d42acc8ad50efc7d9aaba0b5"

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
