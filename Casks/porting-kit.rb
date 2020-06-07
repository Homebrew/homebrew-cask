cask 'porting-kit' do
  version '3.0.28'
  sha256 'fabb615160f58c713c02c7612d0016a1f30f7b9832227ee2ed7bbbd195031262'

  url "https://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'https://portingkit.com/kit/updatecast.xml'
  name 'Porting Kit'
  homepage 'https://portingkit.com/'

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
