cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.15"
  sha256 arm:   "50ee22e0ad480f5ce409ea51a07792325d8e591324133681542728168de6b4e7",
         intel: "31fd4ea9f54dfa3bdc121df5bdbc9f56ec006a16bca99d31bbae0745130b5ab6"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: :monterey

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
