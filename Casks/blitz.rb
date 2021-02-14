cask "blitz" do
  version "1.13.119"
  sha256 "7dcb9251e4aa1b5f12947c335204c00eee9801c9fdbcf9069fb4fff17e4bd06c"

  url "https://dl.blitz.gg/download/Blitz-#{version}.dmg"
  name "Blitz"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://dl.blitz.gg/download/mac"
    strategy :header_match
  end

  auto_updates true

  app "Blitz.app"

  uninstall quit: "com.blitz.app"

  zap trash: [
    "~/Library/Application Support/Blitz",
    "~/Library/Caches/com.blitz.app.ShipIt",
    "~/Library/Cookies/com.blitz.app.binarycookies",
    "~/Library/Logs/Blitz",
    "~/Library/Preferences/com.blitz.app.plist",
    "~/Library/Saved Application State/com.blitz.app.savedState",
  ]
end
