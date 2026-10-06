cask "boss" do
  version "9.5.41"
  sha256 "03282811a4ff89f20315b5df5e59907c97b4685d702ba222589b619f48b78e25"

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
