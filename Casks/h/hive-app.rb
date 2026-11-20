cask "hive-app" do
  arch arm: "-arm64"

  version "1.3.1"
  sha256 arm:   "0e75d282e706a05ac6869545bb4d7f5f40cfece9f33e6a1fd76034c4ff66e696",
         intel: "79b266c29bfc525d61fe0dd525fdff281db71fbc0e52fb49e4b4196c6d0bc76e"

  url "https://github.com/morapelker/hive/releases/download/v#{version}/Hive-#{version}#{arch}.dmg"
  name "Hive"
  desc "AI agent orchestrator for parallel coding across projects"
  homepage "https://github.com/morapelker/hive"

  livecheck do
    url :url
    strategy :github_latest
  end

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
