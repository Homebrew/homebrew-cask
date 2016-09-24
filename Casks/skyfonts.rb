cask 'skyfonts' do
  version '5.6.0.0'
  sha256 '1f96a00e1a0679102b51efbafea6a65849ccc502fb5f506ab3a9b8ac5b62dd0d'

  # cdn1.skyfonts.com was verified as official when first introduced to the cask
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
