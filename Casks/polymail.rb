cask "polymail" do
  version "2.2.5"
  sha256 "590423c3ec9b9d11d84f217129465d48caff965562c421c138768837ea67dd6c"

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip"
  name "Polymail"
  homepage "https://polymail.io/"

  auto_updates true

  app "Polymail.app"
end
