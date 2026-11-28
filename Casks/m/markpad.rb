cask "markpad" do
  version "2.9.3"
  sha256 "d3be65e8813069b9d2268ff1ed5a8284951a3757f774af4cb95b85559a00446c"

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
