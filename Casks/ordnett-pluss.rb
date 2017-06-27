cask 'ordnett-pluss' do
  version :latest
  sha256 :no_check

  url 'http://nedlasting.ordnett.no/ordnettpluss_current.dmg'
  name 'Ordnett Pluss'
  homepage 'https://www.ordnett.no/'

  pkg 'OrdnettPluss3.pkg'

  uninstall pkgutil: 'no.kunnskapsforlaget.OrdnettPluss'
end
