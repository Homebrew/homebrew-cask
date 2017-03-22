cask 'lazarus' do
  version '1.6.4-20170226'
  sha256 'd3af7a83e20732d268ea588be0037347f75392a9d0210e831b056279cc3d8c39'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i386-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: 'ce6a7706e0ea9631ad9bc2e4a3d8d712459c79ea239fee34b7aace8cbe5ecd94'
  name 'Lazarus'
  homepage 'http://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
