cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.26"
  sha256 arm:   "4689a0f79fd6ad1047df2eff5c1521f1504317327d7cc78fffd953aa619da2eb",
         intel: "560d49c2746537c0fe59fb3e2ef42c0dd5f5c789bbf8c9b1b9e5a5f62db9b583"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
