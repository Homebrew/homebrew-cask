cask "claude-island" do
  version "1.3.1"
  sha256 "56f8fe92ab3344f4c73d88e55325624ed988d7d4405a3200cce7fe64ef5b593d"

  url "https://github.com/farouqaldori/claude-island/releases/download/v#{version}/ClaudeIsland-#{version}.dmg",
      verified: "github.com/farouqaldori/claude-island/"
  name "Claude Island"
  desc "Dynamic Island-style notifications for Claude Code CLI sessions"
  homepage "https://claudeisland.com/"

  livecheck do
    url "https://claudeisland.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
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
