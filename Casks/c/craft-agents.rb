cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "fc17d59c2b27cd2647940a5caaecea1f6fa4ef97963d6a53395c078076573d83",
         intel: "d4c5867ad5e1276ae55f07658ee5a7feb7b5141ea4e74ea1f6694874b69dae54"

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
