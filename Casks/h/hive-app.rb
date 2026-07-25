cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.24"
  sha256 arm:   "f8241581bc134c37ddd38697e37b9d26f14bbb01e08afce24b4112c12b45095d",
         intel: "0a93c07c9598bec516d8b7fff6361a9ed3241c57e3a238f20cdbd928312d64da"

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
