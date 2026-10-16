cask "tine" do
  version "0.7.4"
  sha256 "7f2d76e96906797ef1d0276af74c8234258d449baa82dddb5148a5fb6a5f7481"

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
