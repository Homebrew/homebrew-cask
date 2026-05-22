cask "openusage" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.24"
  sha256 arm:   "9ffe147fd5c3e08c9c066a149a5b5aeeddcb56983a346cd7af8db87aecc48542",
         intel: "77aa971d8b8c3d1671c12f9e216cb2a4a24b86780a7a7f44cf555189da3b6550"

  url "https://github.com/robinebers/openusage/releases/download/v#{version}/OpenUsage_#{version}_#{arch}.dmg",
      verified: "github.com/robinebers/openusage/"
  name "OpenUsage"
  desc "AI usage tracker for Cursor, Claude Code, Codex, Copilot and more"
  homepage "https://www.openusage.ai/"

  auto_updates true
  depends_on macos: :monterey

  app "OpenUsage.app"

  zap trash: [
    "~/Library/Application Support/com.sunstory.openusage",
    "~/Library/Caches/com.sunstory.openusage",
    "~/Library/HTTPStorages/com.sunstory.openusage",
    "~/Library/Preferences/com.sunstory.openusage.plist",
    "~/Library/Saved Application State/com.sunstory.openusage.savedState",
    "~/Library/WebKit/com.sunstory.openusage",
  ]
end
