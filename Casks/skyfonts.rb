cask 'skyfonts' do
  version '5.9.1.0'
  sha256 '95282a85c259fac335bc5acbca4f3c7b9d94bfa0e3683eeee3d94eb665410bf6'

  # cdn1.skyfonts.com was verified as official when first introduced to the cask
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  appcast 'https://www.fonts.com/other/skyfonts/getskyfontsclientdownloadinfo',
          checkpoint: '17bbc003f08ec07517c947aa0d08d2bb48e0142982008beeeaf5344d9935d537'
  name 'SkyFonts'
  homepage 'https://www.fonts.com/web-fonts/google'

  installer manual: 'SkyFonts.app'

  uninstall quit:      [
                         'com.mti.Monotype-SkyFonts',
                         'com.mti.Monotype-SkyFontsHelper',
                       ],
            launchctl: 'com.mti.Monotype-SkyFontsHelper',
            delete:    '/Applications/Skyfonts'
end
