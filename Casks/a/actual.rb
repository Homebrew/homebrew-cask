cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.3.0"
  sha256 arm:   "24a247a511c6973f32d23fd4608cb7e776f04136ec9afaca93b10c910b33b879",
         intel: "c0e176fe9d8aff038df8a3f00b15f53f14da48b7b492276a56fee347da6a34f2"

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
