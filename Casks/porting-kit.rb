cask 'porting-kit' do
  if MacOS.release <= :mountain_lion
    version :latest
    sha256 :no_check
    url 'http://portingkit.com/kit/Porting%20Kit%20Legacy.zip'
    name 'Porting Kit Legacy'
    app 'Porting Kit Legacy.app'
    zap delete: [
                  '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit-Legacy.plist',
                  '~/Library/Application Support/Porting-Kit-Legacy',
                  '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit-Legacy.savedState',
                  '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit-Legacy',
                  '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit-Legacy.binarycookies',
                  '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit-legacy.sfl',
                ],
        rmdir:  '~/Applications/Porting Kit Legacy.app'
  else
    version '2.1.0'
    sha256 '162ec84e03f2098bacf6568378d06b87b333ed2b59bd2bd273e0be77c3b48811'
    url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
    appcast 'http://portingkit.com/kit/updatecast.xml',
            checkpoint: 'a5e30702e697aa2bf969da15c901e99b0517851fe9bee9b306c11a032e95e55b'
    auto_updates true
    name 'Porting Kit'
    app 'Porting Kit.app'
    zap delete: [
                  '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
                  '~/Library/Application Support/Porting-Kit',
                  '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
                  '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
                ],
        rmdir:  '~/Applications/Porting Kit.app'
  end

  homepage 'http://portingkit.com/'
  license :gratis

  depends_on macos: '>= :snow_leopard'
end
