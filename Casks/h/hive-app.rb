cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.7"
  sha256 arm:   "87e74091376a03694a55b11b912e064e1a43d737e4eb0bd930c848afbc0c5534",
         intel: "0758a483757f6c6b9e870094e3c90d18b1c6d526287ff3b80f41b4de70816d3c"

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
