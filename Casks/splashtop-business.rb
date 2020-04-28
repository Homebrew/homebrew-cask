cask 'splashtop-business' do
  version '3.3.8.0'
  sha256 '7b3d1256f08fd722e233531744f0d340694d7d68177609a5a9b2bf2d474720fc'

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
