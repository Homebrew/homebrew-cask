cask "claude-usage-bar" do
  version "1.2.1"
  sha256 "fedfb51ed592805b98f7ca02954d11f7361be97972b4fff1eb601201351a07b3"

  url "https://github.com/Artzainnn/ClaudeUsageBar/releases/download/v#{version}/ClaudeUsageBar-Installer.dmg"
  name "ClaudeUsageBar"
  desc "Menu bar tracker for Claude.ai usage"
  homepage "https://github.com/Artzainnn/ClaudeUsageBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "ClaudeUsageBar.app"

  zap trash: [
    "~/Library/Caches/com.claude.usagebar",
    "~/Library/HTTPStorages/com.claude.usagebar",
    "~/Library/HTTPStorages/com.claude.usagebar.binarycookies",
    "~/Library/Preferences/com.claude.usagebar.plist",
  ]
end
