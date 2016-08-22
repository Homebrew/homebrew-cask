cask 'porting-kit' do
  version '2.3.57'
  sha256 'c6ada73e84a6b9fbf3f5348b2cc51a597978eaf7707ed69f861d1860cbd48e7b'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: '4848247e33a9bf815ee5691f83e06bc377be3a9f7df2ac2ce11b02e2a17b16fd'
  name 'Porting Kit'
  homepage 'http://portingkit.com/'
  license :gratis

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
