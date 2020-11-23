cask "avocode" do
  version "4.10.2"
  sha256 "5c27309612e9c634986699dedd12ceac65acfb0f0f0487a4c63167a15c784524"

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
