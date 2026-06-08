cask "agentsmesh" do
  arch arm: "-arm64"

  version "0.41.6"
  sha256 arm:   "f2b6c3c4e04c75855d7717b0ec4b775822cafb0adab13bd720be6164549de46c",
         intel: "06f731f08202792ea6b0bef5a9b63d4fb5d6477b07413d9af892ea277f1dc63e"

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
