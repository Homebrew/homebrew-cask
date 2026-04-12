cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.104"
  sha256 arm:   "d2fe10b1cb962baff925c3a740cc7793ab3050e6a0467d18bed6af91b039b7e0",
         intel: "ace955cb4a3a95f0baf5d77c832dfea8d6ba389ffa9c2cfcff3369fd8d5bae06"

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
