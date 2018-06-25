cask 'ipa-manager' do
  version '2.2.1'
  sha256 '5cd8d2ae311f2d99b0e83e7e861ccdaf7156dab874b2e170d645791031509ffd'

  url 'https://www.blugs.com/Downloads/IPAManager.dmg'
  appcast 'https://www.blugs.com/Appcasts/IPAPalette.xml'
  name 'IPA Palette'
  homepage 'https://www.blugs.com/IPA/'

  auto_updates true
  depends_on macos: '>= :leopard'

  app 'IPA Manager.app'

  zap trash: [
               '~/Library/Preferences/com.blugs.IPAManager.plist',
               '~/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.blugs.ipamanager.sfl*',
               '~/Library/Caches/com.blugs.IPAManager',
             ]
end
