cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "54f96321befed97a13832953a5c839f13a4f397fe410484e56c023668b6c2803",
         intel: "e8b30d16df05d424fae4f716d266b4d006c8da413835fbd6f443f31e103b5c83"

  url "https://github.com/lukilabs/craft-agents-oss/releases/download/v#{version}/Craft-Agents-#{version}-mac-#{arch}.dmg",
      verified: "github.com/lukilabs/craft-agents-oss/"
  name "Craft Agents"
  desc "AI assistant for connecting and working across data sources"
  homepage "https://agents.craft.do/"

  auto_updates true
  depends_on macos: :monterey

  app "Craft Agents.app"

  zap trash: [
    "~/Library/Application Support/Craft Agents",
    "~/Library/Caches/com.lukilabs.craft-agent",
    "~/Library/HTTPStorages/com.lukilabs.craft-agent",
    "~/Library/Preferences/com.lukilabs.craft-agent.plist",
    "~/Library/Saved Application State/com.lukilabs.craft-agent.savedState",
  ]
end
