cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.122"
  sha256 arm:   "9cb8b3b4de268d214dc30d9fa5d15bdff0ef94a5896d6ef9f57d220c73505bf0",
         intel: "4b23fd18bd0102d554d45596db446ae90db6e613fb0d32f7d672454992880f86"

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
