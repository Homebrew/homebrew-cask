cask "claudeusagebar" do
  version "1.3.5"
  sha256 "225acc1fafdddbd675cfc0008660b439ead85ca11b1f37b85fdff1354b3ce077"

  url "https://github.com/Artzainnn/ClaudeUsageBar/releases/download/v#{version}/ClaudeUsageBar-Installer.dmg"
  name "ClaudeUsageBar"
  desc "Menu bar tracker for Claude.ai usage limits"
  homepage "https://github.com/Artzainnn/ClaudeUsageBar"

  depends_on macos: :monterey

  app "ClaudeUsageBar.app"

  uninstall quit: "com.claude.usagebar"

  zap trash: [
    "~/Library/Caches/com.claude.usagebar",
    "~/Library/HTTPStorages/com.claude.usagebar",
    "~/Library/HTTPStorages/com.claude.usagebar.binarycookies",
    "~/Library/Preferences/com.claude.usagebar.plist",
  ]
end
