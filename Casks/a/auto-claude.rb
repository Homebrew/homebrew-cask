cask "auto-claude" do
  arch arm: "arm64", intel: "x64"

  version "2.7.6"
  sha256 arm:   "c8469a7b83344aad7cb830a16fd01a91b8369ffebcb785196d136fa50045505e",
         intel: "c35f967d4ca74c6811cba25c25d2fb9866f8f6b99dc6e8e6769c9405c14ebe99"

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
