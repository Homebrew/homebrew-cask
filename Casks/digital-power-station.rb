cask 'digital-power-station' do
  version '2.2.0.9,2018.08'
  sha256 '251573a04075f85d458f7bf55b05dc2dd29a7afbccf03ab4a93ff9a845f23ff0'

  url "https://bongiovidps.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/Bongiovi_DPS_Mac_#{version.before_comma}.zip"
  appcast 'https://bongiovidps.com/download/'
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
