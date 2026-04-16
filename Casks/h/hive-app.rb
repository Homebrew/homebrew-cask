cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.114"
  sha256 arm:   "73e07991c8fb6e51684c0ee974f6387779131b94f3ac078ac9be384459c0de89",
         intel: "58d332f9f7dc8af2f89f42f770518f52ae36b9cdc2ab5bd2332f737b890da15c"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
