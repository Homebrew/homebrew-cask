cask 'protopie' do
  version '5.0.1'
  sha256 'cb2789f5f4e301fb7982776619678a38a409ab97a754c0831742d10917bd4e92'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
