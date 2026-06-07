cask "agentsmesh" do
  arch arm: "-arm64"

  version "0.41.3"
  sha256 arm:   "e7e29322d6d4efe04ac25b8bd96bfaff75dd0132e7c085c1e203dcbeed804e01",
         intel: "289523dff0f63b4ed5c551d1ee4ea6ac2c743151f9365504cfa17634e2f3b672"

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
