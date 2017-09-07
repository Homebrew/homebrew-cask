cask 'lazarus' do
  version '1.6.4-20170226'
  sha256 'd3af7a83e20732d268ea588be0037347f75392a9d0210e831b056279cc3d8c39'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i386-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: '8ab02d40404440038034b43801b98c89c3c3e278a0a2a8bfedb5951223e47ab1'
  name 'Lazarus'
  homepage 'https://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
