cask "auto-claude" do
  arch arm: "arm64", intel: "x64"

  version "2.7.5"
  sha256 arm:   "1e15d0188c9ceede80dd29273f4446087a22c56fe62e44f29113c20aba1cb403",
         intel: "14ea50fa26823fc785b9f25ee96ffcbbc108dcc7e4fcb6418795aa09fb041c0b"

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
