cask "markpad" do
  version "2.8.3"
  sha256 "454f9ced0cb924a5d1c382187bb3e87a80a7bbec7afc4245f8a398ffbe04fbf1"

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
