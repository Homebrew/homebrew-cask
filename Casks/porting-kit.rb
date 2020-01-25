cask 'porting-kit' do
  version '3.0.11'
  sha256 '66a7a6db31209fa3f514f756d0ec8ff75cd58596ec13c899f4e767ab4db69cf4'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml'
  name 'Porting Kit'
  homepage 'http://portingkit.com/en/'

  auto_updates true
  conflicts_with cask: 'porting-kit-legacy'

  app 'Porting Kit.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl*',
               '~/Library/Application Support/Porting-Kit',
               '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
               '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit.binarycookies',
               '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
               '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
               '~/Library/WebKit/edu.ufrj.vitormm.Porting-Kit',
             ]
end
