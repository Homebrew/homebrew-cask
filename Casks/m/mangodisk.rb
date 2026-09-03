cask "mangodisk" do
  version "1.0.8"
  sha256 "d831397acf19e913f74de8dfd18df632b4d027a4654d2505e4b1dbb28c3666e7"

  url "https://github.com/harry0703/MangoDisk/releases/download/v#{version}/MangoDisk-#{version}-macos.dmg"
  name "MangoDisk"
  desc "Safety-first disk cleaner and disk space analyzer"
  homepage "https://mangodisk.app/"

  auto_updates true
  depends_on :macos

  app "MangoDisk.app"

  zap trash: [
    "~/Library/Application Support/app.mangodisk.desktop",
    "~/Library/Caches/app.mangodisk.desktop",
    "~/Library/HTTPStorages/app.mangodisk.desktop",
    "~/Library/Logs/app.mangodisk.desktop",
    "~/Library/Preferences/app.mangodisk.desktop.plist",
    "~/Library/Saved Application State/app.mangodisk.desktop.savedState",
    "~/Library/WebKit/app.mangodisk.desktop",
  ]
end
