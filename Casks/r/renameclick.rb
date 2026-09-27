cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "2.18.9"
  sha256 arm:   "f2e2360a89eeaafbd96803720db376b2c26e1e9f42623158c38ea2c0b33e514a",
         intel: "0e241cce71db859c140af849dc25a6036fa463d9ed9bbceebbdcdf5c8c45748e"

  url "https://github.com/noemaVision/renameclick/releases/download/v#{version}/RenameClick-#{version}-#{arch}.dmg"
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

  uninstall quit: "com.renameclick.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.renameclick.app.sfl*",
    "~/Library/Application Support/RenameClick",
    "~/Library/Caches/com.renameclick.app",
    "~/Library/Caches/com.renameclick.app.helper",
    "~/Library/HTTPStorages/com.renameclick.app",
    "~/Library/Logs/RenameClick",
    "~/Library/Logs/renameclick.log",
    "~/Library/Preferences/com.renameclick.app.helper.plist",
    "~/Library/Preferences/com.renameclick.app.plist",
    "~/Library/Saved Application State/com.renameclick.app.savedState",
    "~/Library/WebKit/com.renameclick.app",
  ]
end
