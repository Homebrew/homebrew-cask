cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.11"
  sha256 arm:   "d0f837576aa5381731e8597cf5ed32184405a323518b228966dfd4d915bdc3fc",
         intel: "5fa974ddd2afe3d571c71711243e1f30c38df8f298194097acc1c88d695f17c4"

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
