cask 'double-commander' do
  version '0.7.4-7058'
  sha256 'f034aa62d5c391fdfb87367be82917f104ca9c3c8b8829c4c9f6cac20fdc587b'

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss',
          checkpoint: '529d3048a8fbef432a83cda6fd16414f94395841c6dc760d6c26dd59ad2c6e3e'
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end
