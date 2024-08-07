cask "blitz-gg" do
  version "2.1.196"
  sha256 "33e24b337fef6df1f275207f5f77f2e6e7c4b03a800a706ec6f067c7294dd8db"

  url "https://blitz-main.blitz.gg/Blitz-x64-#{version}.dmg"
  name "Blitz"
  desc "Performance analysis software"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://blitz.gg/download/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
