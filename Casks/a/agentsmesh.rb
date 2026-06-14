cask "agentsmesh" do
  arch arm: "-arm64"

  version "0.42.2"
  sha256 arm:   "daf5f3927b4d74145329653b348f8eafe39445b18e0f4c468c842dedc975810a",
         intel: "227283b36184d7d8f3faeaa18aa342daa50f258b3834a96c0b07e5e9a4cbfdb5"

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
