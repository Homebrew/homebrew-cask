cask 'lazarus' do
  version '1.6'
  sha256 'f939418addf454b6d9835f48f079077b55905ba173f27a1bea4c1fae1467df56'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i686-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: '56d06477a5cbba6f3669f864fc3b1573d9c01739ae04bc39d1145d7a7f84f888'
  name 'Lazarus'
  homepage 'http://lazarus.freepascal.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
