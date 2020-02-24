cask 'lazarus' do
  version '2.0.6'
  sha256 'e78388aad925b5343b551401fa85e22ca63b152c3694e345ef6ddd7c37ba0e7d'

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
