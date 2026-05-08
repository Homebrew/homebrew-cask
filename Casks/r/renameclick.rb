cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "2.10.4"
  sha256 arm:   "00f00d3d9ba260089a3341750ea0d32719ca83f29b2e2d672511578f93f46b34",
         intel: "551e6b909329aece295297e226ccac1bfda2818f39c916680877796f1ef7c323"

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
  depends_on macos: ">= :monterey"

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
