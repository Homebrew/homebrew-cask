cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.13"
  sha256 arm:   "3a1dd259e588299f41098fe53933cc5279cf66fbf3de8559df77ee4a56e81677",
         intel: "90bb2f50b4559ac45e2d3f46fe5ba50acb2d3db68cd701e4043c67482505f98a"

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
