cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "24.10.1"
  sha256 arm:   "a6b6bcde35ff1b48e9a65a7f7cdbc44a6c8ef54fba64692df553c2dfb8d3ba62",
         intel: "f2e1eaf1f451725ccabef5b2d3b6ea35f3293878b806b73a5b1522dd6a7e038e"

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
