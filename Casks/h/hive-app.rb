cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.25"
  sha256 arm:   "9fa7ede18e652c8f88b368ae45444968cd44aaab823a939b08223e94906c074c",
         intel: "c2d6dbfc9c9601efe5c8d44c354f1cc10d9cc2e90aa7712e2505403623bebadb"

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
