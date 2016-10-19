cask 'porting-kit' do
  version '2.4.79'
  sha256 '6f47b1eb365e26003c75641912a7147d1e1feae6d374acb10b78cc2a90b9d53f'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: 'cf58a8648931f04d89260b072501fbbb1c56c23ad365a46549eb53a399494d23'
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
