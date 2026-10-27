cask "tine" do
  version "0.8.1"
  sha256 "8b9f37d02a3cc7b6810faac23034d39e8a6b329851f072f9d36a4624222dc6bb"

  url "https://github.com/martinkoutecky/tine/releases/download/v#{version}/Tine_#{version}_universal.dmg"
  name "Tine"
  desc "Outliner for Markdown and Org notes"
  homepage "https://tine.page/"

  depends_on macos: :monterey

  app "Tine.app"
  binary "#{appdir}/Tine.app/Contents/MacOS/tine"

  zap trash: [
    "~/Library/Application Support/page.tine.Tine",
    "~/Library/Caches/page.tine.Tine",
    "~/Library/Logs/page.tine.Tine",
    "~/Library/Preferences/page.tine.Tine.plist",
    "~/Library/Saved Application State/page.tine.Tine.savedState",
    "~/Library/WebKit/page.tine.Tine",
  ]
end
