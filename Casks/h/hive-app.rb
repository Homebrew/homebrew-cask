cask "hive-app" do
  arch arm: "-arm64"

  version "1.2.47"
  sha256 arm:   "d831c61e3f6c6c1b55b1607411952f70c661e1049e3dae0807db5d3dfa45c74a",
         intel: "eb6c2be1725ef56b9d7fc434d3830eb9d6bc428672e713d4163b3b2da7be6f8e"

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
