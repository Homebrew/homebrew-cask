cask "boss" do
  version "8.15.16"
  sha256 "664fa909623a0e9df503ba348a41565ad82ec224c776cd71606c05242d1f0a2c"

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
