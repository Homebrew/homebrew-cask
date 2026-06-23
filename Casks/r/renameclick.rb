cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "2.12.3"
  sha256 arm:   "a6a73078b049387577fa8ab97c901cf793ef134f96799fe935f6c5841222ee44",
         intel: "593178d267bc1782818b5e1a69386241dd584ae28b58ad6c3c5d5fb411c45f60"

  url "https://github.com/noemaVision/renameclick/releases/download/v#{version}/RenameClick-#{version}-#{arch}.dmg",
      verified: "github.com/noemaVision/renameclick/"
  name "RenameClick"
  desc "Local-first AI app for file renaming and organisation"
  homepage "https://rename.click/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "RenameClick.app"

  zap trash: [
    "~/Library/Application Support/RenameClick",
    "~/Library/Caches/com.renameclick.app",
    "~/Library/Caches/com.renameclick.app.helper",
    "~/Library/HTTPStorages/com.renameclick.app",
    "~/Library/Logs/renameclick.log",
    "~/Library/Preferences/com.renameclick.app.helper.plist",
    "~/Library/Preferences/com.renameclick.app.plist",
    "~/Library/Saved Application State/com.renameclick.app.savedState",
    "~/Library/WebKit/com.renameclick.app",
  ]
end
