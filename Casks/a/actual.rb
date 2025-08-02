cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.8.0"
  sha256 arm:   "a274ec243e8b19a53c0cc97736fa826877f6ad9a7544839f7db87c7ee717cc49",
         intel: "ecf26f8dcf87966e82a5075174dabe3d2c114521dc3e8f8e6cfb192f39489a0a"

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
