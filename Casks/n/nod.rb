cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "d41ce6b0f20d1aa94991f562b4db804b3d60683dbdc3359e4c2c58b202254a18",
         intel: "13516f05abf33926b1071e20dc6013e94a4b8d34f4eab767eba5717f30a779f0"

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
