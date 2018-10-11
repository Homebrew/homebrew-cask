cask 'skyfonts' do
  version '5.9.5.0'
  sha256 '1abbcde9e8df3154490ac78950992fe9461cfd1911d28217701f5ff1c5225088'

  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  appcast 'https://www.fonts.com/other/skyfonts/getskyfontsclientdownloadinfo'
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
