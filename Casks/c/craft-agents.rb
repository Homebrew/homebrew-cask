cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.8"
  sha256 arm:   "6fd2f379fddf85f0d9480dcf7a136cc13abeb1a16d403b7136f9ea735587b314",
         intel: "459d40590eedcc2fce6764f57c7295c7db827eaa055b25e9bdabdfd229ce467c"

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
