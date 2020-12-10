cask "slite" do
  version "1.2.2"
  sha256 :no_check

  url "https://download.slite.com/mac"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://download.slite.com/mac"
  name "Slite"
  desc "Team communication and collaboration software"
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
