cask :v1 => 'magican' do
  version :latest
  sha256 :no_check

  url 'http://www.magicansoft.com/download/Magican.pkg'
  homepage 'http://www.magicansoft.com/'
  license :unknown

  pkg 'Magican.pkg'

  uninstall :pkgutil => 'com.magican.*'
end
