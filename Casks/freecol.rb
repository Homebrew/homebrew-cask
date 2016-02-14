cask 'freecol' do
  version '0.11.3'
  sha256 'bf3dffc26689470f8a9c6fdccd079603ce86c4ed4360042db199b57e658e2de4'

  # sourceforge.net/sourceforge/freecol was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/freecol/freecol-#{version}-mac.tar.bz2"
  name 'FreeCol'
  homepage 'http://freecol.org'
  license :gpl

  app 'FreeCol.app'
end
