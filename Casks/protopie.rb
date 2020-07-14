cask 'protopie' do
  version '5.0.4'
  sha256 'c643ae70d2a148ac209e9b5515ca55648327ef7ac11b9ccaa05a843aeeed74f4'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
