cask "auto-claude" do
  arch arm: "arm64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "4a5c403b4700557608aafc30c32586acc5f6473bbb7d588c1c6933344a5e2aea",
         intel: "31c8674ba9601d8a2633935381afda0fe965f13a78ad0b9b5bf075397a8794fe"

  url "https://github.com/AndyMik90/Auto-Claude/releases/download/v#{version}/Auto-Claude-#{version}-darwin-#{arch}.dmg"
  name "Auto Claude"
  desc "Autonomous multi-session AI coding"
  homepage "https://github.com/AndyMik90/Auto-Claude/"

  depends_on macos: ">= :monterey"

  app "Auto-Claude.app"

  zap trash: [
    "~/Library/Application Support/auto-claude-ui",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.autoclaude.ui.sfl*",
    "~/Library/Logs/auto-claude-ui",
    "~/Library/Preferences/com.autoclaude.ui.plist",
  ]
end
