cask "grok-bot" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional intel: "_x64"

  version "0.69.1"
  sha256 arm:   "26be9f6dea4194ffa975ba180dbfc831a7db52f9a275963cdfeb3b3c025e5a3b",
         intel: "dd86b2e7dfc58f4850af67da3eeb7f5489442502db0ba974cca799b8ec9ac78e"

  url "https://downloads.cursor.com/sand/stable/darwin-#{arch}/#{version}/Grok_Bot_#{version}#{arch_suffix}.dmg"
  name "Grok Bot"
  desc "AI teammates that work across your apps and tools"
  homepage "https://x.ai/bot"

  livecheck do
    url "https://api2.cursor.sh/updates/api/update/darwin-#{arch}/sand/0.0.0/stable"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Grok Bot.app"

  zap trash: [
    "~/Library/Application Support/com.anysphere.sand",
    "~/Library/Application Support/Grok Bot",
    "~/Library/Caches/com.anysphere.sand",
    "~/Library/HTTPStorages/com.anysphere.sand",
    "~/Library/Logs/Grok Bot",
    "~/Library/Preferences/com.anysphere.sand.plist",
    "~/Library/Saved Application State/com.anysphere.sand.savedState",
  ]
end
