cask "markpad" do
  version "2.9.0"
  sha256 "8393cc51c43b59924ac2b3daa3a5b1fd57aa0a350b645cda5fc77825216fe9ef"

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
