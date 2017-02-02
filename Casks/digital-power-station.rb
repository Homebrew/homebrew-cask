cask 'digital-power-station' do
  version '2.0.0.20,2017.01'
  sha256 '337dc9ed04906c4460a89b537907bdc5cd1ea9beb1ee42a1bd7fbfa4bd617727'

  url "https://bongiovidps.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/Bongiovi_DPS_Mac_#{version.before_comma}.zip"
  name 'Bongiovi Digital Power Station Plugin'
  homepage 'https://bongiovidps.com/'

  pkg 'Bongiovi DPS.pkg'

  uninstall pkgutil: 'com.bongiovi.pkg.DigitalPowerStation.*',
            delete:  '/Applications/Bongiovi DPS'
end
