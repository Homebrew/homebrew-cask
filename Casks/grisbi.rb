cask 'grisbi' do
  version '1.0.0'
  sha256 'c7a84e8737468e3c1dc08dec5a34330158c767b3ef5a64716d6ec3a0b2c879c2'

  # http://downloads.sourceforge.net/project/grisbi/grisbi%20stable/1.0.x/Grisbi-1.0.0.dmg was verified as official when first introduced to the cask
  url 'http://downloads.sourceforge.net/project/grisbi/grisbi%20stable/1.0.x/Grisbi-1.0.0.dmg'
  name 'Grisbi'
  homepage 'http://www.grisbi.org/'
  license :oss

  app 'Grisbi.app'
end
