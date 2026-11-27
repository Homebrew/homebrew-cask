cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.2"
  sha256 arm:   "e2d534cfdcd417973cff94eb21ffa902e521d3926c5d3318c91c430338b78962",
         intel: "3e738cdb579eef04c1bb9d25e6c699ca1cd56f2a158ef8b1ec28c46161c9fc06"

  url "https://github.com/noemaVision/renameclick/releases/download/v#{version}/RenameClick-#{version}-#{arch}.dmg"
  name "RenameClick"
  desc "Local-first AI app for file renaming and organisation"
  homepage "https://rename.click/"

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
