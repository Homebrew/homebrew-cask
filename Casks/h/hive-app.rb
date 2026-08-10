cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.29"
  sha256 arm:   "a8cc14e2a8b8d617fc0e821e4475d32bd344da99b4645acb48e629e734dc31fa",
         intel: "d9a0a81672273c7869eba09702f58be66f4b8c1dd15a8c23bf46fa7fb44b3678"

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
