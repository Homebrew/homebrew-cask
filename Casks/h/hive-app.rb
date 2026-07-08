cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.11"
  sha256 arm:   "47115b1726708eeef44217f044b4b1fb07763c876bbe1536901be34840279b7e",
         intel: "93371dfcaea3ed17ee6e51e09db2fe6e8a7153fe29675f98191f27fa7202e023"

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
