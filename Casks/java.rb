class Java < Cask
  url 'http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2013-05.dmg'
  homepage 'http://support.apple.com/downloads/DL1572'
  version '1.6.0_65'
  sha1 'ce78f9a916b91ec408c933bd0bde5973ca8a2dc4'
  install 'JavaForOSX.pkg'
  uninstall :pkgutil => 'com.apple.pkg.JavaForMacOSX107'
end
