cask "protopie" do
  version "5.0.5"
  sha256 "02eb3ef7c7daa03f0b82ad552a8f2d4848491a46caf8b029cb9ab9275959071c"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  auto_updates true

  app "ProtoPie.app"
end
