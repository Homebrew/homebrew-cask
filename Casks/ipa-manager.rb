cask 'ipa-manager' do
  version '2.3.1'
  sha256 'b8034bddb062a504662e01b81d8698e1a88787bd1820e4a8002dd5a78f79e967'

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
