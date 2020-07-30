cask "deezer" do
  version "4.20.40"
  sha256 "fb53b3ded815868c805f6f1c0f1f0e76f4bc41356e9c0453d67f962c3ce6307e"

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.deezer.com/desktop/download%3Fplatform%3Ddarwin%26architecture=x64"
  name "Deezer"
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
