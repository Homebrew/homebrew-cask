cask "blitz" do
  version "1.13.47"
  sha256 "a750ae7ba96f95567a675e8c8955a0494e95f5fc2a4ecc9b63b842454077d058"

  url "https://dl.blitz.gg/download/Blitz-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.blitz.gg/download/mac"
  name "Blitz"
  homepage "https://blitz.gg/"

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
