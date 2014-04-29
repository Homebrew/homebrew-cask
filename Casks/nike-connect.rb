class NikeConnect < Cask
  url 'http://nikeplus.nike.com/nikeplus/nikeconnect/installers/macosx/Nike+Connect_new.dmg'
  homepage 'http://nikeplus.nike.com'
  version 'latest'
  no_checksum
  install 'Nike+Connect_new.pkg'
  uninstall :pkgutil => 'com.nike.nikeplusconnect.*'
  uninstall :pkgutil => 'com.nike.sportwatch'
end
