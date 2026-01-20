cask "claudebar" do
  version "0.3.11"
  sha256 "ed1f164e67252fe06c37833a4e326d6ccb523fe5de7ece473ce3fe94004f5965"

  url "https://github.com/tddworks/ClaudeBar/releases/download/v#{version}/ClaudeBar-#{version}.dmg"
  name "ClaudeBar"
  desc "Menu bar app for monitoring AI coding assistant usage quotas"
  homepage "https://github.com/tddworks/ClaudeBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "ClaudeBar.app"

  zap trash: [
    "~/Library/Caches/ClaudeBar",
    "~/Library/Caches/com.tddworks.claudebar",
    "~/Library/Preferences/ClaudeBar.plist",
    "~/Library/Preferences/com.tddworks.claudebar.plist",
  ]
end
