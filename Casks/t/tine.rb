cask "tine" do
  version "0.7.3"
  sha256 "d9c3efed968fc6b37a86f6bc0e1e8da3bdaffd97e2ed159c9d19c8ea82d84cf7"

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
