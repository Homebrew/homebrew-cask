cask 'marked' do
  version '2.5.7923'
  sha256 'e197536389026d1a4113afafb642e09787105de8af37b5a13fd54dfbf37209a5'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: '4a9c417c56614330528fc6fa508cf2cb17679934b4ba67f347154ea07c6add39'
  name 'Marked'
  homepage 'http://marked2app.com'
  license :commercial

  auto_updates true

  app 'Marked 2.app'

  uninstall quit: 'com.brettterpstra.marked2'

  zap delete: [
                '~/Library/Application Support/Marked 2/paddata.padl',
                '~/Library/Application Support/Marked 2/queue.pak',
                '~/Library/Containers/com.brettterpstra.marked2',
                '~/Library/Preferences/com.brettterpstra.marked2.LSSharedFileList.plist',
                '~/Library/Saved Application State/com.brettterpstra.marked2.savedState',
              ]
end
