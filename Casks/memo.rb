cask "memo" do
  version "0.6.3"
  sha256 "eaa9355e348d993502b1ced99d0da9c2eed85b0e2bc6b218a7eb1b24b78a3050"

  url "https://usememo.com/MemoSetup.dmg"
  appcast "https://github.com/btk/memo/raw/master/CHANGELOG.md"
  name "Memo"
  homepage "https://usememo.com/"

  app "Memo.app"

  zap trash: [
    "~/Library/Application Support/Memo",
    "~/Library/Preferences/com.usememo.app.plist",
    "~/Library/Saved Application State/com.usememo.app.savedState",
  ]
end
