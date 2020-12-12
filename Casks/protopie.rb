cask "protopie" do
  version "5.2.0"
  sha256 "2cabe38670799533438419f40b1d7595aa48c566407e623cde59bdf2a43508b6"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  auto_updates true

  app "ProtoPie.app"
end
