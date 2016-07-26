cask 'butt' do
  version '0.1.15'
  sha256 'e24c4e16e51fa21e897b88c371e57e248da66eae02d15df9b2dcab67530fcd2c'

  # sourceforge.net/sourceforge/butt was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/butt/butt-#{version}.dmg"
  name 'Broadcast Using This Tool'
  homepage 'http://danielnoethen.de/'
  license :gpl

  app 'butt.app'
end
