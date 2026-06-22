cask "agentsmesh" do
  arch arm: "-arm64"

  version "0.43.1"
  sha256 arm:   "5cdfbbd523f3708eb1b7351e07d29cda452ef330a1a019de798b64f89f593a4c",
         intel: "ed60a0da042b34231db6febc67184057e9ff117b9bdd3fe2682a051936fb337d"

  url "https://github.com/AgentsMesh/AgentsMesh/releases/download/v#{version}/AgentsMesh-#{version}#{arch}.dmg",
      verified: "github.com/AgentsMesh/AgentsMesh/"
  name "AgentsMesh"
  desc "AI agent workforce platform"
  homepage "https://agentsmesh.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "AgentsMesh.app"

  zap trash: [
    "~/Library/Application Support/agentsmesh",
    "~/Library/Caches/agentsmesh-updater",
    "~/Library/Caches/ai.agentsmesh.desktop",
    "~/Library/HTTPStorages/ai.agentsmesh.desktop",
    "~/Library/Logs/agentsmesh",
    "~/Library/Preferences/ai.agentsmesh.desktop.plist",
    "~/Library/Saved Application State/ai.agentsmesh.desktop.savedState",
  ]
end
