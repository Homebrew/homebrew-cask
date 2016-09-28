cask 'sketch' do
  version '40'
  sha256 'b620e4b080a0522b42067e84d6cc2b5353ef006f95e06c5daa48fd2a5939ea65'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://www.sketchapp.com/appcast3.xml',
          checkpoint: '913c112246fd3cd67841a6ce4defa0f449f41f84c02065f53062079b3bad8d9d'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'
  license :commercial

  app 'Sketch.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl',
                '~/Library/Application Support/com.bohemiancoding.sketch3',
                '~/Library/Caches/com.bohemiancoding.sketch3',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3',
                '~/Library/Logs/com.bohemiancoding.sketch3',
                '~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist',
                '~/Library/Preferences/com.bohemiancoding.sketch3.plist',
                '~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies',
              ]
end
