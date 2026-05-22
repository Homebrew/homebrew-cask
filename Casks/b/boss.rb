cask "boss" do
  version "9.1.11"
  sha256 "97c69235d4ccb90f099632d7e79fb93a1a2651c5ecbc939ca425a30944e46c27"

  url "https://github.com/risa-labs-inc/BOSS-Releases/releases/download/v#{version}/BOSS-#{version}-Universal.dmg",
      verified: "github.com/risa-labs-inc/BOSS-Releases/"
  name "BOSS"
  desc "AI-powered workspace for complex business operations"
  homepage "https://www.risalabs.ai/"

  auto_updates true
  depends_on :macos

  app "BOSS.app"

  zap trash: [
    "~/Library/Application Support/BOSS",
    "~/Library/Caches/ai.rever.boss",
    "~/Library/Preferences/ai.rever.boss.plist",
    "~/Library/Saved Application State/ai.rever.boss.savedState",
  ]
end
