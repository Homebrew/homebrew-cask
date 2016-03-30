cask 'lazarus' do
  version '1.6'
  sha256 'f939418addf454b6d9835f48f079077b55905ba173f27a1bea4c1fae1467df56'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/lazarus/lazarus-#{version}-i686-macosx.dmg"
  name 'Lazarus'
  homepage 'http://lazarus.freepascal.org/'
  license :gpl

  depends_on cask: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
