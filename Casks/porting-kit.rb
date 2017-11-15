cask 'porting-kit' do
  version '2.9.128'
  sha256 '733fd68365f1819554c5fc83abcc4a5414351fb038ab34361b94a41a7f1a1237'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: 'e890b077693cef7cfd969a2e5feb831ada4800ee8347a0b9af4923e6e7715e6e'
  name 'Porting Kit'
  homepage 'http://portingkit.com/en/'

  auto_updates true
  conflicts_with cask: 'caskroom/versions/porting-kit-legacy'
  depends_on macos: '>= :mountain_lion'

  app 'Porting Kit.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl*',
                '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
                '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit.binarycookies',
                '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Porting-Kit',
                '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
              ]
end
