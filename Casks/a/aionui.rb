cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.19"
  sha256 arm:   "c07242137274baf6f30e0612652082e7cb43e929c99ceb9d76f6f7913b446819",
         intel: "f6b48edf50c43ecc2ae6c50202e0a8b468cf8d8d554efa1ac0f8f5ff0230b772"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
