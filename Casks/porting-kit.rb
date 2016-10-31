cask 'porting-kit' do
  version '2.4.91'
  sha256 'e156f59f344a95beb6a9d9dbce5c7f32bf0230c71b6d63c9648e1ae3a7f14263'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: 'f2913419f1689b2dd1315ab7cf82bfbca978814a2858dc529f1fb06cf1886c0d'
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
