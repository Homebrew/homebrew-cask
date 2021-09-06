cask "memo" do
  version "1.0.3"
  sha256 :no_check

  url "https://usememo.com/MemoSetup.dmg"
  appcast "https://raw.githubusercontent.com/btk/memo/master/package.json"
  name "Memo"
  homepage "https://usememo.com/"

  app "Memo.app"

  zap trash: [
    "~/Library/Application Support/Memo",
    "~/Library/Preferences/com.usememo.app.plist",
    "~/Library/Saved Application State/com.usememo.app.savedState",
  ]
end
