cask 'protopie' do
  version '4.1.0'
  sha256 '2eee2e56a9b6574a7939dacea175c62e592ae972fa10d5feb143a13092cd9276'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
