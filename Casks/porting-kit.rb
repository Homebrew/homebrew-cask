cask 'porting-kit' do
  version '2.6.220'
  sha256 'ec239a881d476b861497dab2a49777d669a5e750d8bade60cdba78967913b084'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: '63adac1b64b4506b2de1f12cafdaa62154c2c7a5655eccb8d4128951000715b6'
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
