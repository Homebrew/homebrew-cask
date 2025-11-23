cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.11.0"
  sha256 arm:   "6f370c09728038297a88efc1629b745b17a53e77c2c1b79cb61607ce29d4d1ad",
         intel: "7dab3f6efce9167bcff026a0d0e9ea29422dbdc8ce99060ac65d36e23b0dd9bd"

  url "https://github.com/actualbudget/actual/releases/download/v#{version}/Actual-mac-#{arch}.dmg",
      verified: "github.com/actualbudget/actual/"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.org/"

  depends_on macos: ">= :monterey"

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
