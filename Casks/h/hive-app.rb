cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.39"
  sha256 arm:   "4f8a33c3feb1fbf2c734753c7d61b4998c1c3af34722ed000d7d55baaef800d7",
         intel: "73b48d5289aa18a860e4db8a2e8b00e76f218faa7f194dae86d297fac5bd9bc2"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  auto_updates true
  depends_on macos: :monterey

  app "Hive.app"

  zap trash: [
    "~/.hive",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hive.app.sfl*",
    "~/Library/Application Support/hive",
    "~/Library/Logs/hive",
    "~/Library/Preferences/com.hive.app.plist",
    "~/Library/Saved Application State/com.hive.app.savedState",
  ]
end
