cask 'protopie' do
  version '3.10.1'
  sha256 'bb2130d308f4561cf2fc9f8fc7f9d83960d1af403db408205f5940247331176d'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
