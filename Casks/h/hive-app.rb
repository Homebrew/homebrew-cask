cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.23"
  sha256 arm:   "8129a3d73878cbf0cc3543a61606e7afeecca3aefa6b1589609e07c1e3c69270",
         intel: "0ca4b5ed7186a0830974460e214a05517e2f64a019173b42900086bf1b497488"

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
