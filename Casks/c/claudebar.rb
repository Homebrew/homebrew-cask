cask "claudebar" do
  version "0.5.28"
  sha256 "9a71764cd8fbc64cdc4b2cc1a461359d19c9f3641f18410c2b42244c6208b60f"

  url "https://github.com/tddworks/ClaudeBar/releases/download/v#{version}/ClaudeBar-#{version}.dmg"
  name "ClaudeBar"
  desc "Menu bar app for monitoring AI coding assistant usage quotas"
  homepage "https://github.com/tddworks/ClaudeBar"

  depends_on macos: :sequoia

  app "ClaudeBar.app"

  zap trash: [
        "~/Library/Application Support/ClaudeBar",
        "~/Library/Caches/ClaudeBar",
        "~/Library/Caches/com.tddworks.claudebar",
        "~/Library/HTTPStorages/com.tddworks.claudebar",
        "~/Library/Logs/ClaudeBar",
        "~/Library/Preferences/ClaudeBar.plist",
        "~/Library/Preferences/com.tddworks.claudebar.plist",
      ],
      rmdir: "~/.claudebar"
end
