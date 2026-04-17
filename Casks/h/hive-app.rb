cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.115"
  sha256 arm:   "a8b13821929b351f3f13d1c3a79821852c09628cf67fc649cb537a893ce59b16",
         intel: "a6dd6d95049f423cee9d3ee72e89ace489eaf36149ba3884cbbc7ea9c58b6256"

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
