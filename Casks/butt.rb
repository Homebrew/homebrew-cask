cask 'butt' do
  version '0.1.14'
  sha256 'f12eac6ad2af8bc38717cccde3f7f139d426b6d098ef94f7dcd6ae7d1225f6ad'

  url "http://downloads.sourceforge.net/sourceforge/butt/butt-#{version}.dmg"
  name 'Broadcast Using This Tool'
  homepage 'http://butt.sourceforge.net/'
  license :gpl

  app 'butt.app'
end
