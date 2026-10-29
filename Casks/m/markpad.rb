cask "markpad" do
  version "2.9.1"
  sha256 "cb18922b9c9141df28ffd8fbb8ee434c21b6dc5952816094938f05f29db25286"

  url "https://github.com/sftwrdotdev/Markpad/releases/download/v#{version}/Markpad_#{version}_universal.dmg"
  name "Markpad"
  desc "Markdown viewer and editor"
  homepage "https://markpad.dev/"

  auto_updates true
  depends_on :macos

  app "Markpad.app"

  zap trash: [
    "~/Library/Application Support/com.alecdotdev.markpad",
    "~/Library/Caches/com.alecdotdev.markpad",
    "~/Library/Preferences/com.alecdotdev.markpad.plist",
    "~/Library/WebKit/com.alecdotdev.markpad",
  ]
end
