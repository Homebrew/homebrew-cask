cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "ddf24590730fda01d9daa49754f006b55d490dd14d1ed5842792e97584615ed1",
         intel: "e3066b4d8aa00b01b0fca7eb691e4306c457be10e698aa59241898f1c30b1d0d"

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
