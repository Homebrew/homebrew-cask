cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.9"
  sha256 arm:   "5859556d8f196a1ba4c717e0e0559f05230b18d9a51c517a281f138caef28ece",
         intel: "33afddd546699cf6f2fb815181f40298c87174829c320f1b8b890e965c35037e"

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
