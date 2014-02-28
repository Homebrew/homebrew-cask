class Java6 < Cask
  url 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg'
  homepage 'http://support.apple.com/kb/dl1572'
  version '2013-05'
  sha256 '81e1155e44b2c606db78487ca1a02e31dbb3cfbf7e0581a4de3ded9e635a704e'
  install 'JavaForOSX.pkg'
  uninstall :pkgutil => 'com.apple.pkg.Java(ForMacOSX107|MDNS|Security)'
end
