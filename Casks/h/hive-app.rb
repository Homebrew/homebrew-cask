cask "hive-app" do
  arch arm: "-arm64"

  version "1.0.98"
  sha256 arm:   "4ad1c3693437dd50aa3a630e8d75a1a7227d8d480f37b98b874350ddb9130bb7",
         intel: "027f9258b00ef6f5f827a0262a1fff6c629288f37649fc0860a133511c4d4251"

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
