cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "5e417f5c34a51160b1bc9f3974e3773feca0ea71169711b3a9bd98fe69f1cd39",
         intel: "1ab51d440751e7c60345a0038e57b39324bd49840500b3fbb43a47ffe658a80c"

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
