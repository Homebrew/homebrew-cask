cask "boss" do
  version "9.5.28"
  sha256 "565715e8f2efe8521dde02cef46b362e37b1016cfb2f569c59a2360a6418c79f"

  url "https://github.com/risa-labs-inc/BOSS-Releases/releases/download/v#{version}/BOSS-#{version}-Universal.dmg"
  name "BOSS"
  desc "AI-powered workspace for complex business operations"
  homepage "https://www.risalabs.ai/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "BOSS.app"

  zap trash: [
    "~/.boss",
    "~/Library/Application Support/BOSS",
    "~/Library/Caches/ai.rever.boss",
    "~/Library/Preferences/ai.rever.boss.plist",
    "~/Library/Saved Application State/ai.rever.boss.savedState",
  ]
end
