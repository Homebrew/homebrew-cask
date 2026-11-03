cask "grok-bot" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional intel: "_x64"

  version "0.78.4"
  sha256 arm:   "481817526714f4134dabb47230271febbfeba9c59abbea2e7beb12f426d64f96",
         intel: "724cb26372effc00c7ead80976bb11e2efa970e952f77fa3e3de2d2c1c95b98b"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anysphere.sand.sfl*",
    "~/Library/Application Support/Grok Bot",
    "~/Library/Caches/com.anysphere.sand",
    "~/Library/HTTPStorages/com.anysphere.sand",
    "~/Library/Logs/Grok Bot",
    "~/Library/Preferences/com.anysphere.sand.plist",
    "~/Library/Saved Application State/com.anysphere.sand.savedState",
  ]
end
