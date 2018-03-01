cask 'lazarus' do
  version '1.8.0'
  sha256 'dbabfd3021feb9c1013af4bdfad8261b92f61f982a1e0cabd6c272e895c866bc'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i686-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: '3ef100e227f7604f9ea94958b39994c6b6327e6aa69cb2dbe22211038e82d1d0'
  name 'Lazarus'
  homepage 'https://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
