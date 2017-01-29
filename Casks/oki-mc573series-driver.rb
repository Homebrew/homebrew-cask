cask 'oki-mc573series-driver' do
  version '1.0.0'
  sha256 'd36d34fefef372f3d4926a5eedcdc0945ce87518f6e73fadf63f103452864f73'

  url 'http://www.oki.com/eu/printing/download/MC573_PS_OSX_010000_85604.dmg'
  name 'OKI Color PS Driver for OSX'
  homepage 'http://www.oki.com/eu/printing/support/drivers-and-utilities/?id=46591401FZ01&tab=drivers-and-utilities&productCategory=colour&sku=46403102'

  pkg 'Installer for OSX.pkg'

  uninstall pkgutil: 'com.okidata.pkg.MC573.*'
end
