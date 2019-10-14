cask 'skyfonts' do
  version '5.9.5.3'
  sha256 '0c15c517e377f824099c3ea9ce7cd4d1cfcde2686e472592a9f71b66dc15cf88'

  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  appcast 'https://api.skyfonts.com/api/SkyFontsAppCast?osid=3'
  name 'SkyFonts'
  homepage 'https://skyfonts.com/'

  installer manual: 'Install SkyFonts.app'

  uninstall quit:      [
                         'com.mti.Monotype-SkyFonts',
                         'com.mti.Monotype-SkyFontsHelper',
                       ],
            launchctl: 'com.mti.Monotype-SkyFontsHelper',
            delete:    '/Applications/Skyfonts'
end
