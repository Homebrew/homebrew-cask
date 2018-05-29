cask 'splashtop-business' do
  version '3.2.4.0'
  sha256 '9f6479f313a0db992ba95412c2653e6843dc04356f9102611c61972cc5f7437a'

  # d17kmd0va0f0mp.cloudfront.net/macclient/STB was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client',
          checkpoint: 'bb47a3c4c584d60148d778a25157104aa80f03357ffbc270d68fac312aafe584'
  name 'Splashtop Business'
  homepage 'https://www.splashtop.com/business'

  pkg 'Splashtop Business.pkg'

  uninstall pkgutil: [
                       'com.splashtop.stb.*',
                       'com.splashtop.splashtopBusiness.*',
                     ]
end
