cask :v1 => 'digital-power-station' do
  version :latest
  sha256 :no_check

  url 'http://www.dpsplugin.com/download/BongioviAcousticsDPS.dmg'
  name 'Digital Power Station'
  name 'DPS Plugin'
  homepage 'http://dpsplugin.com/home/'
  license :closed
  tags :vendor => 'Bongiovi'

  pkg 'Digital Power Station Installer.pkg'

  uninstall :pkgutil => 'com.bongiovi.pkg.DigitalPowerStation.*'
end
