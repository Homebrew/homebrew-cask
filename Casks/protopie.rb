cask "protopie" do
  version "5.1.1"
  sha256 "237e5865e841bc66a807d171775c0a44cbe75fbe2460a034dbec037097ca855f"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  auto_updates true

  app "ProtoPie.app"
end
