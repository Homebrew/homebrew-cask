cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "26.2.0"
  sha256 arm:   "a73b0f65f3afe9f853e7d2affbbc4ef229d0495893a8c1ceda5a529c64107ac7",
         intel: "0d62080e33c2b2fde1a488b540fc68af246ef7dffbfee743b5cf475c6c5f01b1"

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
