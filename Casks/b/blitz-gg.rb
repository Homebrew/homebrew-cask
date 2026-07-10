cask "blitz-gg" do
  version "2.1.596"
  sha256 "2bed1a61f09cf6850a0b76da687484d283e7c5300a3602e400875c854a253828"

  url "https://blitz-main.blitz.gg/Blitz-universal-#{version}.dmg"
  name "Blitz"
  desc "Performance analysis software"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://blitz.gg/download/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  app "Blitz.app"

  uninstall quit: "com.blitz.app"

  zap trash: [
    "~/Library/Application Support/Blitz",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.blitz.app.sfl*",
    "~/Library/Caches/com.blitz.app.ShipIt",
    "~/Library/Cookies/com.blitz.app.binarycookies",
    "~/Library/Logs/Blitz",
    "~/Library/Preferences/com.blitz.app.plist",
    "~/Library/Saved Application State/com.blitz.app.savedState",
  ]
end
