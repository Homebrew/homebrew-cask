cask 'klayout' do
  version '0.24.8'
  sha256 '95b38f338b76636fc3fa840b747fc3a62dd9335a69163996fd741f289c62f40e'

  # klayout.org was verified as official when first introduced to the cask
  url "http://www.klayout.org/downloads/klayout-#{version}-MacOSX-Yosemite-1-Qt487mp.dmg.bz2"
  name 'KLayout'
  homepage 'http://www.klayout.de/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  suite '.', target: 'KLayout'

  uninstall pkgutil: 'klayout.de',
            quit:    'klayout.de'
end
