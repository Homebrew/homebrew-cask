cask 'splashtop-business' do
  version '3.3.0.1'
  sha256 '2b1a3360dfa45f2d4aea53ebc4ce9d9c9820482f382ac56b31cf65aba410e2d9'

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
