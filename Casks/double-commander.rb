cask 'double-commander' do
  version '0.7.1-6739'
  sha256 '62070f1be008f65e3298a0bc3f9bd65cac8ed8225f91a95b09326514167562e3'

  url "http://downloads.sourceforge.net/sourceforge/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  name 'Double Commander'
  homepage 'http://doublecmd.sourceforge.net/'
  license :gpl

  app 'Double Commander.app'
end
