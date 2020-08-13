cask "slite" do
  version "1.1.17"
  sha256 "9d8aa1dc774ac826f31a2ce63804167908b5bf3efd839f2fd8680fbbd166ba03"

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
