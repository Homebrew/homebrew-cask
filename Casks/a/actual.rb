cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "26.6.0"
  sha256 arm:   "32f6893b599e8408b21e9cfe4b0d2530f41951c31100a41d0585b815691c577f",
         intel: "378693f0589c62cd762f75fc2b8a405b2beda9800adee8d128e55b8af8ac85ad"

  url "https://github.com/actualbudget/actual/releases/download/v#{version}/Actual-mac-#{arch}.dmg",
      verified: "github.com/actualbudget/actual/"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.org/"

  depends_on macos: :monterey

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
