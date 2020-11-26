cask "protopie" do
  version "5.1.4"
  sha256 "f96722de636ec35f04fb35a32e9d6c79a560a389f009ea3795f3529fd1bff4be"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  auto_updates true

  app "ProtoPie.app"
end
