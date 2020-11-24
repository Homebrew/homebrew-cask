cask "avocode" do
  version "4.10.3"
  sha256 "96048b229217af2b648b8c854497550ee9c3a6a9d59f23f3a8ed6b531411c0a4"

  url "https://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://manager.avocode.com/download/avocode-app/mac-dmg/"
  name "Avocode"
  homepage "https://avocode.com/"

  auto_updates true

  app "Avocode.app"

  zap trash: [
    "~/.avocode",
    "~/Library/Application Support/Avocode",
    "~/Library/Caches/com.madebysource.avocode",
    "~/Library/Caches/com.madebysource.avocode.ShipIt",
    "~/Library/Preferences/com.madebysource.avocode.helper.plist",
    "~/Library/Preferences/com.madebysource.avocode.plist",
    "~/Library/Saved Application State/com.madebysource.avocode.savedState",
  ]
end
