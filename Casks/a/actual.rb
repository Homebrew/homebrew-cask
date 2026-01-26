cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "26.1.0"
  sha256 arm:   "f117a89fcb10a5dc00c17ad1f0c79c01f8555d7aee07dec61a8c313e05ed691c",
         intel: "beff51d9dcbff03b8b8cd406012c7673528b02cc622e5207a6c5494e0e071dcd"

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
