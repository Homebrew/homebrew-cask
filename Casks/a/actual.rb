cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.3.1"
  sha256 arm:   "a1b8423feac1575b8742be7d497c2f9f5b360d61eb5623937a116c6a344eadb9",
         intel: "260f34231611d70f17e54c2e73a396e3021a63c2217b52525a6a1d85acdd2391"

  url "https://github.com/actualbudget/actual/releases/download/v#{version}/Actual-mac-#{arch}.dmg",
      verified: "github.com/actualbudget/actual/"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.org/"

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
