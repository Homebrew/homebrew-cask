cask 'digital-power-station' do
  version '2.2.0.8,2018.08'
  sha256 'a83af79889dd88e976b5b166fb7a91aa7c8da92d98a40e2e0960e54c49ec0945'

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
