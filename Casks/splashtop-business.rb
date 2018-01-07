cask 'splashtop-business' do
  version '3.1.8.0'
  sha256 'd5ee6dd956ef3078bc68da419f3eef08c6b2211640164ae8f99eae759a5d7a55'

  # d17kmd0va0f0mp.cloudfront.net/macclient/STB was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client',
          checkpoint: 'fbd254e31749e0b5780b0fe3f1c9ee9d9dec614a6cc5c2190c5d54541624a2b2'
  name 'Splashtop Business'
  homepage 'https://www.splashtop.com/business'

  pkg 'Splashtop Business.pkg'

  uninstall pkgutil: 'com.splashtop.stb.*'
end
