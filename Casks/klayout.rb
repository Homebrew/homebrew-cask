cask 'klayout' do
  version '0.24.7'
  sha256 'c986ede1d0950294b1c3f94fe174927cfee2af82fe21ac03a5b15d5abc6b6385'

  # klayout.org was verified as official when first introduced to the cask
  url "http://www.klayout.org/downloads/klayout-#{version}-MacOSX-Yosemite-1-Qt487mp.dmg.bz2"
  name 'KLayout'
  homepage 'http://www.klayout.de/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "klayout.#{version}.pkg"

  uninstall pkgutil: 'klayout.de',
            quit:    'klayout.de'
end
