cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.92.0"
  sha256 arm:   "9472c4afd8bbe5bb3b15f730e151090b7c2559d5398c8321d9ddf7c85aae6cc6",
         intel: "2e69b81d8831968ae3a0d073f6f4da3a38abcdb1a3dff44b2d3355c5f23b1cd3"

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
