cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.9"
  sha256 arm:   "52631aa142ecad7ffce3cf8333a5e8dc1579f31861949cedae640c60f04cfd6a",
         intel: "72ee60f20dc4e563e6183392ed90c768c351c758615e7d974ce6949edc7c5048"

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
