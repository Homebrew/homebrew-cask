cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.7"
  sha256 arm:   "4c6c3e203bd7f6f725cbcad5feab991921d236a551d810c40da8e3c8842a7da0",
         intel: "b0ecb1d9ec6cd150e585b16119fbfc7033eeeca6dcf49d718c437b6917e9777c"

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
