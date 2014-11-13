cask :v1 => 'freecol' do
  version '0.10.7'
  sha256 'eb05ea179df6adc6bcf4234ce3809c48b8c2d5597da20a10910ded677f2b6a2d'

  url "https://downloads.sourceforge.net/sourceforge/freecol/freecol-#{version}-mac.tar.bz2"
  homepage 'http://freecol.org'
  license :oss

  app 'FreeCol.app'
end
