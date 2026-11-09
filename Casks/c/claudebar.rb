cask "claudebar" do
  version "0.5.26"
  sha256 "99c32079f8ffb55cbf3151de1598018e945bd546f4010d9604d936286e77c3c2"

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
