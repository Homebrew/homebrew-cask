cask 'protopie' do
  version '3.8.2'
  sha256 'e64912d472d590702dae58f65603a18348e25b25c39982ced9e9b6bbab180395'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/',
          checkpoint: '31d00ff6ab7ccbf6257591d0a4a9627bba15114b5af05187dca6e877cdddd12d'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
