cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.6"
  sha256 arm:   "55ddde9051f39ae5c670d4764a68ec0e9beac54a2fcc44bbd68cbcb7c31c7acd",
         intel: "62ec973bff6ebf408c1d626b7a465d2581d9c1c5ab4a42eccd40d3296e24c5cf"

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
