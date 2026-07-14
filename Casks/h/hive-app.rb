cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.18"
  sha256 arm:   "919cfa556304c976234b5312b4bfd0981852896e7cd415debd6a40b7da8a4b72",
         intel: "09dd568d46acec9298ca2af14f6f53f646446c2447c7e8805ef1f5e1fcb3501a"

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
