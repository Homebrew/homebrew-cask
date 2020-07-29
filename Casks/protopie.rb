cask 'protopie' do
  version '5.0.3'
  sha256 '037539a61f994ff5003559ae10b7c007a5934dd4cd339d3fc11399354560b230'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.protopie.io/darwin/latest'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
