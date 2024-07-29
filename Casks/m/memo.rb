cask "memo" do
  version "1.0.3"
  sha256 :no_check

  url "https://usememo.com/MemoSetup.dmg"
  name "Memo"
  desc "Note taking app using GitHub Gists"
  homepage "https://usememo.com/"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "Memo.app"

  zap trash: [
    "~/Library/Application Support/Memo",
    "~/Library/Preferences/com.usememo.app.plist",
    "~/Library/Saved Application State/com.usememo.app.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
