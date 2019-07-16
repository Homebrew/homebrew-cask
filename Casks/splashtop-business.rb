cask 'splashtop-business' do
  version '3.3.2.0'
  sha256 'c78a6340ee4ebc107fe81a4340032675a9af69f020ab4d267769d984d6b9cb1a'

  # d17kmd0va0f0mp.cloudfront.net/macclient/STB was verified as official when first introduced to the cask
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
