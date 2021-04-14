cask "blitz" do
  version "1.13.149"
  sha256 "8783e4026dbd46440a702274f357952dd7c777ba41053f79e8d26c7dfdb32824"

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
