cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "26.3.0"
  sha256 arm:   "6fc2ce1ad0d21620ba4a253d872141cc6e2e197c5353209c4ff4a677c0318160",
         intel: "5a13bbb6489426d86d4cd34fc6e4fab606f44b778a31f9677bfdeae38ae88f01"

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
