cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "30d0771fbca25180f1c3d889845b3de83ad1d2f80c092e512e9a8a6a81fdba81",
         intel: "31f0cc16980c0e49fdcb87ccdeeb6bfa34e713b6d758757f3e98d1187f2342eb"

  url "https://github.com/lukilabs/craft-agents-oss/releases/download/v#{version}/Craft-Agents-#{version}-mac-#{arch}.dmg",
      verified: "github.com/lukilabs/craft-agents-oss/"
  name "Craft Agents"
  desc "AI assistant for connecting and working across data sources"
  homepage "https://agents.craft.do/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Craft Agents.app"

  zap trash: [
    "~/Library/Application Support/Craft Agents",
    "~/Library/Caches/com.lukilabs.craft-agent",
    "~/Library/HTTPStorages/com.lukilabs.craft-agent",
    "~/Library/Preferences/com.lukilabs.craft-agent.plist",
    "~/Library/Saved Application State/com.lukilabs.craft-agent.savedState",
  ]
end
