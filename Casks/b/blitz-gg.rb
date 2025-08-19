cask "blitz-gg" do
  version "2.1.385"
  sha256 "72c605bd0d7825dce44c3f82ff840afb329d5af4acc9bc3b2f3de6e8e2ee16d1"

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
