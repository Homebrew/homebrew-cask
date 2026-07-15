cask "agent-island" do
  version "1.6.1"
  sha256 "0b1738df96890b0d93a91587ad5393507e6fa32961f35c510a9f41c730572ec6"

  url "https://github.com/tristan666666/agent-island/releases/download/v#{version}/AgentIsland-#{version}.dmg",
      verified: "github.com/tristan666666/agent-island/"
  name "Agent Island"
  desc "Local status companion for Claude Code and Codex sessions"
  homepage "https://agent-island.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "AgentIsland.app"

  zap trash: [
    "~/Library/Application Support/AgentIsland",
    "~/Library/Caches/dev.agentisland.AgentIsland",
    "~/Library/Preferences/dev.agentisland.AgentIsland.plist",
  ]
end
