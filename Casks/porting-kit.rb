cask 'porting-kit' do
  version '2.4.96'
  sha256 'f91b3de024a4fde972fd40c1fdf525fc4318957a8d293362897ef7d1bf9a5367'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: 'f67c7567751a0fde0dea3ff22a00c1c04496810df664e7ecbf7c4fde583686fa'
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
