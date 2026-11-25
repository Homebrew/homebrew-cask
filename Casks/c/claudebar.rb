cask "claudebar" do
  version "0.5.29"
  sha256 "15e87a6c31d034b787e2f1c25a4bb1101f94645661bd0bdcb48c397045a579db"

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
