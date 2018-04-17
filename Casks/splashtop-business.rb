cask 'splashtop-business' do
  version '3.2.0.0'
  sha256 '09151ece4e3b7139a52ebc43a276b50604a2e7546901d226837dfc32484d2249'

  # d17kmd0va0f0mp.cloudfront.net/macclient/STB was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client',
          checkpoint: 'c12dd30429b1eab2dbc72a6f50ced0342abfbea505db90c327df552b7a9349ce'
  name 'Splashtop Business'
  homepage 'https://www.splashtop.com/business'

  pkg 'Splashtop Business.pkg'

  uninstall pkgutil: 'com.splashtop.stb.*'
end
