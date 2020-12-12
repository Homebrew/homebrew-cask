cask "milanote" do
  version "2.2.24"
  sha256 "113228205b9af2f808d26a1d432449b6b07c022340f231d548c6004cdd01f3a2"

  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg",
      verified: "milanote-app-releases.s3.amazonaws.com/"
  appcast "https://www.milanote.com/download-mac-app"
  name "Milanote"
  homepage "https://www.milanote.com/"

  app "Milanote.app"

  zap trash: [
    "~/Library/Application Support/Milanote",
    "~/Library/Caches/com.milanote.app",
    "~/Library/Caches/com.milanote.app.ShipIt",
    "~/Library/Library/Logs/Milanote",
    "~/Library/Preferences/com.milanote.app.helper.plist",
    "~/Library/Preferences/com.milanote.app.plist",
  ]
end
