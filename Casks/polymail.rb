cask "polymail" do
  version "2.2.4"
  sha256 "ccd9333efe5702702c8e06a1ab73f5e45082bc027811d9a020af5e8b1fc4512d"

  url "https://sparkle-updater.polymail.io/macos/builds/Polymail-v#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://sparkle-updater.polymail.io/osx/Polymail-Latest.zip"
  name "Polymail"
  homepage "https://polymail.io/"

  auto_updates true

  app "Polymail.app"
end
