cask 'protopie' do
  version '3.11.1'
  sha256 '1a0130fe60f29a6be6aa62f4d3e24428de69cc4a6b29174281428d54a7db7e3a'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
