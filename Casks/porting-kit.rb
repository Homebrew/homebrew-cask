cask 'porting-kit' do
  version '2.4.108'
  sha256 '5d54fb1a6033413f340c5b9d40b2db9eee9ddd2011fdf828312b05867784b895'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: '9260ad80921ccbcc6652556a7e3de9650212e52914369fbd0cad7b82073519f0'
  name 'Porting Kit'
  homepage 'http://portingkit.com/'

  auto_updates true
  conflicts_with cask: 'caskroom/versions/porting-kit-legacy'
  depends_on macos: '>= :snow_leopard'

  app 'Porting Kit.app'

  zap delete: [
                '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
                '~/Library/Application Support/Porting-Kit',
                '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
                '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl',
              ]
end
