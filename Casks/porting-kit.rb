cask 'porting-kit' do
  version '2.9.48'
  sha256 '6e15d80d8b604d91f2d439c5c5c05451c0b3bd557ea7865dc72a61e7765c71e2'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: '20256320a8405ca69cbab1856e745f3efec3f62cb1ef81d16d8554d140ec6040'
  name 'Porting Kit'
  homepage 'http://portingkit.com/en/'

  auto_updates true
  conflicts_with cask: 'caskroom/versions/porting-kit-legacy'
  depends_on macos: '>= :mountain_lion'

  app 'Porting Kit.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl',
                '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
                '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit.binarycookies',
                '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Porting-Kit',
                '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
              ]
end
