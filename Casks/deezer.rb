cask "deezer" do
  version "4.29.0"
  sha256 "5f390101ccb399865ac07847b15bfd0d7657ff030fb658d9313e71ab0301831b"

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
