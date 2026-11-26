cask "hive-app" do
  arch arm: "-arm64"

  version "1.3.5"
  sha256 arm:   "77f08fac539b5738b6bf941466701a00b032126c818379ca6f74d4a499a1065c",
         intel: "bc9f0af42cb89e6d0ae8183ae69826b2a104eb6ac0c024a88f1522feaa234e85"

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
