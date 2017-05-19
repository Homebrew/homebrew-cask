cask 'porting-kit' do
  version '2.6.0'
  sha256 '3bb29c6f816440cbbe77af941a1e2bc46eea9c6eae1d188b8e9fc4cfdcf14bc0'

  url "http://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast 'http://portingkit.com/kit/updatecast.xml',
          checkpoint: '5cd26b98fb4494a098040f3321ebae8cfbd05b1c9bc90db53f73398c8c23fa51'
  name 'Porting Kit'
  homepage 'http://portingkit.com/en/'

  auto_updates true
  conflicts_with cask: 'caskroom/versions/porting-kit-legacy'

  app 'Porting Kit.app'

  zap delete: [
                '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist',
                '~/Library/Application Support/Porting-Kit',
                '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState',
                '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl',
              ]
end
