# typed: strict
# frozen_string_literal: true

cask "claude-island" do
  version "1.2"
  sha256 "a29ee23b427dbfd034cf91aeee2ca0458e09e1cef28b8eb5f23d70898c5139a2"

  url "https://github.com/farouqaldori/claude-island/releases/download/v#{version}/ClaudeIsland-#{version}.dmg",
      verified: "github.com/farouqaldori/claude-island/"
  name "Claude Island"
  desc "Dynamic Island-style notifications for Claude Code CLI sessions"
  homepage "https://claudeisland.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
