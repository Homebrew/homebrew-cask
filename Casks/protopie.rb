cask 'protopie' do
  version '5.0.2'
  sha256 '7ef367c2d18b5388b5b5bba421edca5cbc48b26900816086f8c1c8cce7004c74'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
