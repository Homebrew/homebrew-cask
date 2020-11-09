cask "protopie" do
  version "5.1.3"
  sha256 "24099017833ee306e401aebb1a8b81b939fde44c04c3ea5eeb8705d25c2fd022"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  auto_updates true

  app "ProtoPie.app"
end
