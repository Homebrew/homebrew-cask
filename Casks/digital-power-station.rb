cask 'digital-power-station' do
  version '2.1.0.10,2017.05'
  sha256 '62006a206c7a3b8458b243708672165ab4b6598be5b92f6f69204cd4bbe2cb5d'

  url "https://bongiovidps.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/Bongiovi_DPS_Mac_#{version.before_comma}.zip"
  appcast 'http://bongiovidps.com/download/',
          checkpoint: 'a69183f03d8974decc46f76ffc9caafe132725d7166f7b3a34dae72f17064a78'
  name 'Bongiovi Digital Power Station Plugin'
  homepage 'https://bongiovidps.com/'

  pkg 'Bongiovi DPS.pkg'

  uninstall pkgutil: [
                       'com.bongiovi.pkg.BongioviDPS.*',
                       'com.bongiovi.pkg.DigitalPowerStation.tmp.pkg',
                     ],
            kext:    'com.bongiovi.DPSReflector',
            quit:    'com.bongiovi.DPS20'
end
