cask "protopie" do
  version "5.1.0"
  sha256 "daaa08b8f9864d15f2f21d5d6fef3b9e492c5a7c8824c41c3476af2c891b469c"

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest"
  name "ProtoPie"
  homepage "https://www.protopie.io/"

  auto_updates true

  app "ProtoPie.app"
end
