cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.93.0"
  sha256 arm:   "b166d37fc423172df8f38e6b2af44baa216d470f82241b0fe8cb4af6c47b25a8",
         intel: "b56a88d7421cc7452501b4db354e683743ebde212dc70114fdf4f11429d617e3"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  auto_updates true
  depends_on macos: :ventura

  app "aider-desk.app"

  zap trash: [
    "~/.aider-desk",
    "~/Library/Application Support/aider-desk",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hotovo.aider-desk.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/eu.magiksoft.aiderdesk.sfl*",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Preferences/eu.magiksoft.aiderdesk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
