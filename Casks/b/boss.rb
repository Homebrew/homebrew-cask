cask "boss" do
  version "8.12.27"
  sha256 "dfffa6807eb2dff4f36d75cd74f22853e255538325478c7106d64b34f648f5be"

  url "https://github.com/risa-labs-inc/BOSS-Releases/releases/download/v#{version}/BOSS-#{version}-Universal.dmg",
      verified: "github.com/risa-labs-inc/BOSS-Releases/"
  name "BOSS"
  desc "AI-powered workspace for complex business operations"
  homepage "https://www.risalabs.ai/"

  auto_updates true

  app "BOSS.app"

  zap trash: [
    "~/Library/Application Support/BOSS",
    "~/Library/Caches/ai.rever.boss",
    "~/Library/Preferences/ai.rever.boss.plist",
    "~/Library/Saved Application State/ai.rever.boss.savedState",
  ]
end
