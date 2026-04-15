cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.110"
  sha256 arm:   "58b23a77fdc8c2c685f1a66784596750cd055fd2fceae2d99f05c4b5e085cea1",
         intel: "fbedf5e569b718a66f7acc4bc4ec3eba1036d34898a9b61e24c8ddf23b430167"

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
