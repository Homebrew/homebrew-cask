cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.9"
  sha256 arm:   "38f34c4eb128cbbc74a81430afce52182c8d101ce94450965eaf93526a14bbef",
         intel: "b861c61849758cad543e4cd461a323e20a8ea995d6ef7196d40fb951da2b9411"

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
