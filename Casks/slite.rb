cask "slite" do
  version "1.2.0"
  sha256 "7f865689ce1d505f04e34774558eedc728374dff50606a5f6018a2e84aa8d6b1"

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
