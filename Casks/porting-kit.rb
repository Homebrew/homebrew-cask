cask 'porting-kit' do
  version :latest
  sha256 :no_check

  if MacOS.release <= :mountain_lion
    url 'http://portingkit.com/kit/Porting%20Kit%20Legacy.zip'
  else
    url 'http://portingkit.com/kit/Porting%20Kit.zip'
    appcast 'http://portingkit.com/kit/updatecast.xml',
            checkpoint: 'a5e30702e697aa2bf969da15c901e99b0517851fe9bee9b306c11a032e95e55b'
    auto_updates true
  end

  name 'Porting Kit'
  homepage 'http://portingkit.com/'
  license :gratis

  app 'Porting Kit.app'

  zap delete: [
                '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
                '~/Library/Application Support/Porting Kit',
                '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
                '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
                '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit.binarycookies',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl',
              ],
      rmdir:  '~/Applications/Porting Kit.app'
end
