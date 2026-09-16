cask "grok-bot" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional intel: "_x64"

  version "0.55.0"
  sha256 arm:   "10ee58ba16351dc34490a9f135442c71501f4a5b6cf069f79d76c50e1631f483",
         intel: "93ab15f80d6cf5df473df5d4d5b0d74a10e4619c9cdb250bfbc0363fd380420f"

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
