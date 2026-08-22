cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "2.15.0"
  sha256 arm:   "274d41ea9c1cc84ac671ee4110f5cf52cf5e3601ff77747687cb3df14155b65b",
         intel: "12a556f6d477df01a366eb85ff5594805240fd98efbfc7166fbe9698e59a76a8"

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
