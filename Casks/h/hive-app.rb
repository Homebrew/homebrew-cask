cask "hive-app" do
  arch arm: "-arm64"

  version "1.1.21"
  sha256 arm:   "d53082ec42dec102a610486a907a1967b4639624dab55fa2083f7c90cd1c13e9",
         intel: "ac6f879713ef176ba238a66a2e902bff17058508f0703dffb60e3b22b1b89b5f"

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
