cask 'porting-kit' do
  version '3.0.38'
  sha256 '113a2b60c2c2a17b4db48d221e33e8c94219b4f641882de2b49791370bd7246b'

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
