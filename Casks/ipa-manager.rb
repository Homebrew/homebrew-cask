cask 'ipa-manager' do
  version '2.3'
  sha256 '3cd5ae05ee59c613a0193ea3283fa878fcf10a5bde4939490acf98433d55dd75'

  url "https://www.blugs.com/Downloads/IPAPalette_#{version}.dmg"
  appcast 'https://www.blugs.com/Appcasts/IPAPalette.xml'
  name 'IPA Palette'
  homepage 'https://www.blugs.com/IPA/'

  auto_updates true

  app 'IPA Manager.app'

  zap trash: [
               '~/Library/Preferences/com.blugs.IPAManager.plist',
               '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.blugs.ipamanager.sfl*',
               '~/Library/Caches/com.blugs.IPAManager',
             ]
end
