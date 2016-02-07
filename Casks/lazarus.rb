cask 'lazarus' do
  version '1.4.2-20150711'
  sha256 'a63ae1e6206044f60b7ab1640a33b7fb0de58a7e26c32efb17d15d94cbd7120c'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/lazarus/lazarus-#{version}-i386-macosx.dmg"
  name 'Lazarus'
  homepage 'http://lazarus.freepascal.org/'
  license :gpl

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
