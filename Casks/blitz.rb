cask "blitz" do
  version "1.10.34"
  sha256 "b7003164efaffe80f94edd8c85c7b3fddedc40fab0e7e28e128e4ef5d7fb5bb8"

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
