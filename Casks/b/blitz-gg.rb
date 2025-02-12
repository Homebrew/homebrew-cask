cask "blitz-gg" do
  version "2.1.260"
  sha256 "c74f239727487144fea99d56cdb717dd538739bd63837db2fa1db02d2348cacb"

  url "https://blitz-main.blitz.gg/Blitz-x64-#{version}.dmg"
  name "Blitz"
  desc "Performance analysis software"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://blitz.gg/download/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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

  caveats do
    requires_rosetta
  end
end
