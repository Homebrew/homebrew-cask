cask "claude-island" do
  version "1.3"
  sha256 "06a85e0cd62bd41cd328ccca52ad21f237a1876c11e7b3b91fd824c283726b0f"

  url "https://github.com/farouqaldori/claude-island/releases/download/v#{version}/ClaudeIsland-#{version}.dmg",
      verified: "github.com/farouqaldori/claude-island/"
  name "Claude Island"
  desc "Dynamic Island-style notifications for Claude Code CLI sessions"
  homepage "https://claudeisland.com/"

  depends_on macos: ">= :sequoia"

  app "Claude Island.app"

  zap trash: [
    "~/.claude/hooks/claude-island-state.py",
    "~/Library/Application Support/com.celestial.ClaudeIsland",
    "~/Library/Caches/com.celestial.ClaudeIsland",
    "~/Library/HTTPStorages/com.celestial.ClaudeIsland",
    "~/Library/Preferences/com.celestial.ClaudeIsland.plist",
    "~/Library/Saved Application State/com.celestial.ClaudeIsland.savedState",
  ]
end
