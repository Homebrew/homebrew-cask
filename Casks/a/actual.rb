cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.2.1"
  sha256 arm:   "d5251581f0f3d29f5df45b86d0e3d0627510dbb3a3402c3b462d60fef7e45fde",
         intel: "373c64bb6acf151bb1ac239f0838f7fdb6e6a46b614539c6592de2c5ea298e99"

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
