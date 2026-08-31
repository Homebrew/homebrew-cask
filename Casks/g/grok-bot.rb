cask "grok-bot" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional intel: "_x64"

  version "0.30.0"
  sha256 arm:   "255116458e104203f045a21e5310161f3600eb751c06879a6efe3487f08fd53e",
         intel: "db0d38b3eb7c14e29a303c54dab9e6c52b4be23a4c3a1830d20f25e2a5837567"

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
