cask "slite" do
  version "1.2.1"
  sha256 "734b9dacdbc95a6c878f09b9b5e3663afe491e85c24e0228454ad298018389dc"

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
