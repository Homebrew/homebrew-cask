cask 'digital-power-station' do
  version '2.1.0.10,2017.05'
  sha256 '62006a206c7a3b8458b243708672165ab4b6598be5b92f6f69204cd4bbe2cb5d'

  url "https://bongiovidps.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/Bongiovi_DPS_Mac_#{version.before_comma}.zip"
  appcast 'https://bongiovidps.com/download/',
          checkpoint: '0b2aae319faf064d279f1abcb27320e658bed0ec48afe344fa3b270cbdccd446'
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
