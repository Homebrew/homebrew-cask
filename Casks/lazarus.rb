cask 'lazarus' do
  version '1.8.4'
  sha256 '7764e9ece462072658528d2c1d7996e4eb6d419fd26412f0e25c69671115d36a'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i686-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: 'e0081b64f9832570a27fb5c6fd86873f7d1f6335e188f5218907c14bf31bc901'
  name 'Lazarus'
  homepage 'https://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
