cask "blitz" do
  version "1.11.14"
  sha256 "1382d2da9d0ce059ec5afdeb6b6b07f75bf5deea118d15f0564e00e9208e6ba9"

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
