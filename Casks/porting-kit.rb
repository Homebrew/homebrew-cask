cask 'porting-kit' do
  version '3.0.31'
  sha256 '7c8e6227518cb996ecb87363727d83bf7e342f4b36834b50f425ba6ca41f629a'

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
