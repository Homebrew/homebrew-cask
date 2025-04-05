cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.4.0"
  sha256 arm:   "36651c32a75d86b11685175b4be700871276d44a23714ec3dd0169909dcb8fb9",
         intel: "cc025fcf4979a8fd5e3c3245135f693d0c8cf61e2756b264d3e59272718325f0"

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
