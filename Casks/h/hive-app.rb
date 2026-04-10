cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.103"
  sha256 arm:   "deec1470a0a3131db722f6b69f657eb008c78baaceff4758524ae7d71b5e139c",
         intel: "1a9b6f74b19a87b5c32bed441f96c4594f20452eca691aa3c860e35cd7dc1623"

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
