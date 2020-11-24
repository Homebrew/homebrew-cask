cask "deezer" do
  version "4.28.0"
  sha256 "9a891b5e21c0ab8331f0ab527fd8d7d023f9da149292faa88572c17e0fc15abf"

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
