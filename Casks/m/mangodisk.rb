cask "mangodisk" do
  version "1.1.9"
  sha256 "b82b033d5491e31b543752317131e78032f196af881d6df7787664eb561383f5"

  url "https://github.com/harry0703/MangoDisk/releases/download/v#{version}/MangoDisk-#{version}-macos.dmg"
  name "MangoDisk"
  desc "Disk cleaner and storage analyser"
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
