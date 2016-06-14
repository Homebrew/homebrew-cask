cask 'skyfonts' do
  version '5.5.0.0'
  sha256 '8b79798e79f2529a9e30438a9126ab577859a6ee27c56d733cbbd793f9eabfb0'

  # skyfonts.com is the official download host per the vendor homepage
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name 'SkyFonts'
  homepage 'https://www.fonts.com/web-fonts/google'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer manual: 'SkyFonts.app'

  uninstall quit:      [
                         'com.mti.Monotype-SkyFonts',
                         'com.mti.Monotype-SkyFontsHelper',
                       ],
            launchctl: 'com.mti.Monotype-SkyFontsHelper',
            delete:    '/Applications/Skyfonts'
end
