cask "actual" do
  arch arm: "arm64", intel: "x64"

  version "25.9.0"
  sha256 arm:   "fe5f1c4318816a900cda06472b9f961e3a600cdb004c55f238a27aa5e79ce48b",
         intel: "022713f5a50c5bc10c6ec9077afd2d3cc4f1cc226cbde4da9b5b84c88b31d0fa"

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
