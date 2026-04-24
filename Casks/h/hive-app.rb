cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.124"
  sha256 arm:   "9ead5352b9d5401a89c5b99a3a4d8b9256a162084fbfcccdbd630120264c314c",
         intel: "2b1626042a2fdbac2d7fa89317e952906dcae274d4bf272e2e14bdb660f030f3"

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
