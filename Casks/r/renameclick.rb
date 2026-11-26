cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "4.2.1"
  sha256 arm:   "78afb3971b69886e91030907d39dfd0d04ee0db74452c935de3fb48219e9ddb1",
         intel: "51ac2b0ee060f0f6424c814eb62d162b4ebccd9403afdadd8320a1a6fe843b86"

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
