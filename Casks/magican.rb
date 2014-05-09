class Magican < Cask
  url 'http://www.magicansoft.com/download/Magican.pkg'
  homepage 'http://www.magicansoft.com/'
  version 'latest'
  sha256 :no_check
  install 'Magican.pkg'
  uninstall :pkgutil => 'com.magican.*'
end
