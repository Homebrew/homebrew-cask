cask 'marked' do
  version '2.5.7'
  sha256 'e197536389026d1a4113afafb642e09787105de8af37b5a13fd54dfbf37209a5'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: 'f4d3f04d0f0e6d46306176caf99e27c156ec1bed698540ea3d5ab839329112e7'
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
