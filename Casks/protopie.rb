cask "protopie" do
  version "5.1.2"
  sha256 "01e5e0b947946da44b4b3aa865d2b7825d9d60dc8143b3f8c1d392f27854b13c"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  auto_updates true

  app "ProtoPie.app"
end
