cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "26.7.0"
  sha256 arm:   "7e9b5be9d3d1a78de6a7a625717dd0e31ccfb2f79f9718f761726925dac44ece",
         intel: "16bf76d13434697a190654fe937e966b6c0012f20439be425c0c8eef9a6eb05e"

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
