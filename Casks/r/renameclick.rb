cask "renameclick" do
  arch arm: "arm64", intel: "x64"

  version "2.14.2"
  sha256 arm:   "03e60aa48a1817ce5b2c96bac3b5d0d0f4d2011d82b0c7d8ab0f642f342cec01",
         intel: "7c8ac506e6c4ce0c2cd0a7eae4f26cea4a92f90e98e9dfaa5edf5043e6bde2f6"

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
