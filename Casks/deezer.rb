cask "deezer" do
  version "4.23.1"
  sha256 "f7520c05a2f3f113ab44ca3cb2cde1dbe3070152ba93fabafea42dd8389e9954"

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.deezer.com/desktop/download%3Fplatform%3Ddarwin%26architecture=x64"
  name "Deezer"
  desc "Music player"
  homepage "https://www.deezer.com/download"

  auto_updates true

  app "Deezer.app"

  zap trash: [
    "~/Library/Application Support/Caches/deezer-desktop-updater",
    "~/Library/Application Support/deezer-desktop",
    "~/Library/Logs/Deezer",
    "~/Library/Preferences/ByHost/com.deezer.*",
    "~/Library/Preferences/com.deezer.deezer-desktop.plist",
    "~/Library/Saved Application State/com.deezer.deezer-desktop.savedState",
  ]
end
