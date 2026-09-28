cask "markpad" do
  version "2.8.0"
  sha256 "f424d66a5c04e23c63edaaa793e7f0c9f2d3503e228de7dee4a4cb31e19645c1"

  url "https://github.com/sftwrdotdev/Markpad/releases/download/v#{version}/Markpad_#{version}_universal.dmg"
  name "Markpad"
  desc "Markdown viewer and editor"
  homepage "https://markpad.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
