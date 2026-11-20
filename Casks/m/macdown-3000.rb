cask "macdown-3000" do
  version "3000.0.8"
  sha256 "9d24f5d9e84319893854819c8ff148a8933015fba1ab69a2e3b0480a5bff65b7"

  url "https://github.com/schuyler/macdown3000/releases/download/v#{version}/MacDown-#{version}.dmg"
  name "MacDown 3000"
  desc "Markdown editor with live preview and syntax highlighting"
  homepage "https://macdown.app/"

  conflicts_with cask: "macdown"
  depends_on :macos

  app "MacDown 3000.app"
  binary "#{appdir}/MacDown 3000.app/Contents/SharedSupport/bin/macdown"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.macdown.macdown3000.sfl*",
    "~/Library/Application Support/MacDown 3000",
    "~/Library/Caches/app.macdown.macdown3000",
    "~/Library/Preferences/app.macdown.macdown3000.plist",
  ]
end
