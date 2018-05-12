cask 'splashtop-business' do
  version '3.2.2.0'
  sha256 '94546156f5df7c337cf64fa0f5f025e0e98d132ecbcec906becf37d40a822b9d'

  # d17kmd0va0f0mp.cloudfront.net/macclient/STB was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STB/Splashtop_Business_Mac_INSTALLER_v#{version}.dmg"
  appcast 'https://www.splashtop.com/wp-content/themes/responsive/downloadx.php?product=stb&platform=mac-client',
          checkpoint: '3bc26aa5aaa22dc5f027a74e515fa5e487bccb884f6a217a49f92b73a04c1651'
  name 'Splashtop Business'
  homepage 'https://www.splashtop.com/business'

  pkg 'Splashtop Business.pkg'

  uninstall pkgutil: [
                       'com.splashtop.stb.*',
                       'com.splashtop.splashtopBusiness.*',
                     ]
end
