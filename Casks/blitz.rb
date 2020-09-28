cask "blitz" do
  version "1.13.10"
  sha256 "8859a3766c4c09d7e47b4620b0bfb93ac05da641db670c9882c49452dcb0c9da"

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
