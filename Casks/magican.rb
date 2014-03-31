class Magican < Cask
  url 'http://www.magicansoft.com/download/Magican.pkg'
  homepage 'http://www.magicansoft.com/'
  version 'latest'
  no_checksum
  install 'Magican.pkg'
  uninstall :pkgutil => 'com.magican.*'
end
