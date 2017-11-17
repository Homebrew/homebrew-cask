cask 'porting-kit' do
  version '2.9.131'
  sha256 'c0015fbe1ec55e64a58076442c81052eed6a767b98391260b2225292cd34880a'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: 'ba8fd209f82b02f13da1c3bd0e6b72b314396aedaa5a2c0c77cb5c14b9bf38e6'
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
