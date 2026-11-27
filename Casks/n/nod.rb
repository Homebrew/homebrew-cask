cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.10.3"
  sha256 arm:   "5ef67ce56f6f0559bc70511a6bf68bffe19927ea1bfbbeca8f244bd86a0ea17d",
         intel: "5eb543cdfd38dc1feeba3bece0efb65bf1e2ee118387e787558532c1fa52dbc4"

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
