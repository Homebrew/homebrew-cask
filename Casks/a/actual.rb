cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.12.0"
  sha256 arm:   "66c7cb6b7268b6a4cd86ab3a4ac9c67052c4335642fa65b11f6e3e88959d1f3d",
         intel: "dfdd300b8192bdf7c42bdad6a9fd08837456eb579bb4713f900660334a0167b1"

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
