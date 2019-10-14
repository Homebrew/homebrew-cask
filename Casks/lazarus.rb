cask 'lazarus' do
  version '2.0.4'
  sha256 '31fbb59c7191aa66b67f5248dfd79f88ce05b490909662eb3dc0492d52362b7b'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i686-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss'
  name 'Lazarus'
  homepage 'https://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
