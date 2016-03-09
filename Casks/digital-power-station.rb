cask 'digital-power-station' do
  version :latest
  sha256 :no_check

  url 'http://www.dpsplugin.com/download/BongioviAcousticsDPS.dmg'
  name 'Bongiovi Digital Power Station Plugin'
  homepage 'http://dpsplugin.com/home/'
  license :closed

  pkg 'Digital Power Station Installer.pkg'

  uninstall pkgutil: 'com.bongiovi.pkg.DigitalPowerStation.*'
end
