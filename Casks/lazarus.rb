cask 'lazarus' do
  version '1.8.2'
  sha256 '8be9f23af6055475e7dd092d5bb0a5145782c9c32ad32fdfc64ca8f7bddad4e0'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i686-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: 'd911d118f867bdcc4e710d24da8515eea62f76328ef65238e1db3df77897268f'
  name 'Lazarus'
  homepage 'https://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
