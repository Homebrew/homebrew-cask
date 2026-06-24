cask "craft-agents" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.10.4"
    sha256 "1d2c12e78706683a2932bfd79003b1f6cc45bccbe9b147b8fdd3e0340a463f15"
  end
  on_intel do
    version "0.10.1"
    sha256 "9ac17ef80625df3957f5b0ecddee5a707038fad4a5c86f508f19dfe9c4405b00"

    livecheck do
      skip "Legacy version"
    end

    deprecate! date: "2026-06-12", because: :discontinued
  end

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
