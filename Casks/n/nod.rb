cask "nod" do
  arch arm: "arm64", intel: "x64"

  version "0.9.5"
  sha256 arm:   "f0d16ff5c725ae9b7e11e8227e47e650043bce8ec4705c76dda7d47223b5fb82",
         intel: "d7ab29e6fdae96c67432f7fc8b0332649878193f50ee9c43f5cb3183c55ba434"

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
