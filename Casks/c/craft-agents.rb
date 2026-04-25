cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.12"
  sha256 arm:   "9b096dfd3d85aa84260ebc606af7e2ccbc59e251648fee018ac25c9816dc908a",
         intel: "51dc19039ac268bec0109d9649c05f1c2ea1fcef710c58c8f51673eb1ff5a200"

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
