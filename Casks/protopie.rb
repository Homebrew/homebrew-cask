cask 'protopie' do
  version '4.3.2'
  sha256 '73cc1b3e1165866a60196c6ef0c46f39d13b07baec766c5c1556b4e6b2f219ef'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
