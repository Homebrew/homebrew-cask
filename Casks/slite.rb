cask "slite" do
  version "1.1.18"
  sha256 "55579d7b266eb845372b19c12c3e875550e7dd2ea388f58160fca8ff48465a11"

  url "https://download.slite.com/mac"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://download.slite.com/mac"
  name "Slite"
  homepage "https://slite.com/"

  app "Slite.app"

  zap trash: [
    "~/Library/Application Support/Slite",
    "~/Library/Caches/com.slite.desktop",
    "~/Library/Caches/com.slite.desktop.ShipIt",
    "~/Library/Preferences/com.slite.desktop.helper.plist",
    "~/Library/Preferences/com.slite.desktop.plist",
    "~/Library/Saved Application State/com.slite.desktop.savedState",
  ]
end
