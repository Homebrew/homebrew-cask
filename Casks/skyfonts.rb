cask 'skyfonts' do
  version '5.9.5.5'
  sha256 'facb1bf918780eecf7111a9957f277a77de114e92f599c8101a68518345b63fb'

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
