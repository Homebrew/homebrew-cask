cask "grok-bot" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional intel: "_x64"

  version "0.57.1"
  sha256 arm:   "0ecb5036add3259a100e15bd6d0ea0ab2cb1ed8dcb9a19f7e9633abcef869fa3",
         intel: "e6399258516aa23cc39cac056e473315a4c0d966086ee2f846aad84b939288b9"

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
