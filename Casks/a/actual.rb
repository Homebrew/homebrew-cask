cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "26.4.0"
  sha256 arm:   "2a20949626ab84442db7ac36d0a3b710867c6ce71464e941c8d07c74685d13bf",
         intel: "f32e67f6a39b8223fd1d223ab6f0d9442c88d0e041b599cdc3c5374b3045f586"

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
