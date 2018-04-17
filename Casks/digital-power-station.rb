cask 'digital-power-station' do
  version '2.1.0.15,2017.10'
  sha256 '3404af04dafc3fd91851564f711ba1ef16c8d90662637ed18cf940c712f3287d'

  url "https://bongiovidps.com/wp-content/uploads/#{version.after_comma.dots_to_slashes}/Bongiovi_DPS_Mac_#{version.before_comma}.zip"
  appcast 'https://bongiovidps.com/download/',
          checkpoint: '8c74b5c14886ad586ccb18c510f80c4f1f2539eed194da3221431fb92db734ce'
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
