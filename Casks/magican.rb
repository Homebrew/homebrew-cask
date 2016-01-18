cask 'magican' do
  version :latest
  sha256 :no_check

  url 'http://www.magicansoft.com/download/Magican.pkg'
  name 'Magican'
  homepage 'http://www.magicansoft.com/'
  license :gratis

  pkg 'Magican.pkg'

  uninstall pkgutil: 'com.magican.*'
end
