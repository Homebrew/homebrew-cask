cask 'splashtop-business' do
  version '3.4.0.1'
  sha256 'aac8406cdc22c562595c7d4cfbb067639af69d50f0bf4abf6fc97dbebbbb3b32'

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
