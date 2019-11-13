cask 'protopie' do
  version '4.1.3'
  sha256 '354eb173607e613ea6cb670104eb93727eea24dc9907d945e42f70caec3b5c13'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
