cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "24.9.0"
  sha256 arm:   "43346a77d58390119d69b70e86e66416558e9679f7f5907aa2e15ceb49e2422a",
         intel: "cf384e663216fc953c9b1990639f2a53c662970117497dfa9aac7f0c8083f039"

  url "https://github.com/actualbudget/actual/releases/download/v#{version}/Actual-mac-#{arch}.dmg",
      verified: "github.com/actualbudget/actual/"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.com/"

  depends_on macos: ">= :catalina"

  app "Actual.app"

  zap trash: [
    "~/Documents/Actual",
    "~/Library/Application Support/Actual",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.actualbudget.actual.sfl*",
    "~/Library/Logs/Actual",
    "~/Library/Preferences/com.actualbudget.actual.plist",
    "~/Library/Saved Application State/com.actualbudget.actual.savedState",
  ]
end
