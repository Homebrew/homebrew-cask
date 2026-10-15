cask "tine" do
  version "0.7.2"
  sha256 "6a0312a6bd6fd101a390a8c7b56145c778c2dca12436c0598cc4aaa0db33f0fd"

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
