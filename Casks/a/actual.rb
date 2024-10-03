cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "24.10.0"
  sha256 arm:   "f2d25149398173f52d0f16342d44a47d88236107118be33f764ea9b3bb568a93",
         intel: "f90a7c62b717a30aaaf713f6f95542ef4d4c89e2cb7cea069bbd5b10ddaa9f4d"

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
