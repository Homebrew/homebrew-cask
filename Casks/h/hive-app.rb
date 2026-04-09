cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.102"
  sha256 arm:   "b95f7df3078f0af12f16290d65da3ac66a4e1a0f1d3c0007807ace7f3d152c12",
         intel: "283c49a3c478b68cf7f3827ec15582651f865856c2f44321d7d517efed7cc25b"

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
