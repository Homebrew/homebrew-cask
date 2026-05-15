cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "67fd21a9ecb9a2fe5e04ab7002ccb9a191b7935e472f18eb72c4ea8f38e6ff20",
         intel: "e8938e1fb1c476154a52c4fc0249497a3bb2f3bdf11fe8220092b387c79c3db7"

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
