cask "openusage" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.25"
  sha256 arm:   "72c1908c16a0659f1ea709dba279e718edb1d05bc0c6f286219c32d6fc959e72",
         intel: "6ce2fa4631249d63a4d8fb725fd8d081e4cfa2abd9f3bfa8c9cbda19da58c669"

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
