cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "62bc713ba43c6d05cd38332a2d153f5ace9702cc4c51452c16ec9fd2f667d550",
         intel: "13d42bd8cad70c14cafbfdb7737f0b4b4181086ad1c8a534e8f0d0a158b6f0cb"

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
