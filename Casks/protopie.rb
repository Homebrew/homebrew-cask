cask 'protopie' do
  version '5.0.0'
  sha256 'e0b1ace8506eba1d9c08c0532282c00e533dadd9114fcbc05829ac9928995a51'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
