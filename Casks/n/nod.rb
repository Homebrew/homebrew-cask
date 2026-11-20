cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "c5ed43cc15f7dc3d3403d4893d3f4d0d79af1c387bd3e182e4a4f93a5bfff00b",
         intel: "a8bef6c8479beada58d24f5548ccaaca3347f7b72a6713827c11f081d39dbd37"

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
