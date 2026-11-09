cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.50"
  sha256 arm:   "add2463c5dc8fc0171d453f608926b13d9879d1fa719067459ba280d315cdee7",
         intel: "00a034520c979f1e99dc03cc90f9cdfd68d72f9db6834e06dfb46430f3bf100d"

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
