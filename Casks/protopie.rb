cask 'protopie' do
  version '4.3.0'
  sha256 'c346eab0e98ac7b0d7f1d3a5e5914beea116c9ca4d5ed7b6a4ceb7fb7f1edee1'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
