cask "agentsmesh" do
  arch arm: "-arm64"

  version "0.42.3"
  sha256 arm:   "2aa5c2ae7daec738539fbb0cd0cff1ee3ed32df644406df5f9df688ff5eb72f3",
         intel: "f77e9c81a8ec2627d1e7b5ce5ef27b6c7343636fa3a9ece53664e71916ad7755"

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
