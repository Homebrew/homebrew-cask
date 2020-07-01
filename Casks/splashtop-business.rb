cask 'splashtop-business' do
  version '3.4.0.0'
  sha256 '323fc07eb4bf55d2a580cc4a1d0e4412b18d8f653bd7530be16a0d51dbf4188f'

  # d17kmd0va0f0mp.cloudfront.net/macclient/STB/ was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client'
  name 'Splashtop Business'
  homepage 'https://www.splashtop.com/business'

  pkg 'Splashtop Business.pkg'

  uninstall pkgutil: [
                       'com.splashtop.stb.*',
                       'com.splashtop.splashtopBusiness.*',
                     ]
end
