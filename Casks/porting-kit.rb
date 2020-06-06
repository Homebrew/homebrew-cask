cask 'porting-kit' do
  version '3.0.26'
  sha256 'b4e724fbccd1dd628ac99fa1a392447968de4d8270d1a617ee579d2abc8f8df6'

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
