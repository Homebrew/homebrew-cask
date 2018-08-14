cask 'skyfonts' do
  version '5.9.2.1'
  sha256 '58eab505b64d025207d1b418ac3bbe23b68a413b81af74ad9d279964046a280d'

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
