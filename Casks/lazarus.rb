class Lazarus < Cask
  version '1.0.14'
  sha256 'b371f073ae2b8b83c88c356aed8dd717811ba4d9adfee6623a9a48a9c341531a'

  url 'https://downloads.sourceforge.net/lazarus/lazarus-1.0.14-20131116-i386-macosx.dmg'
  homepage 'http://lazarus.freepascal.org/'

  install 'lazarus.pkg'
  uninstall :pkgutil => 'org.freepascal.lazarus.www'
end
