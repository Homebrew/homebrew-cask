cask 'sketch' do
  version '41'
  sha256 '86a86646ce822b6f67f68e6175c359cef2cba0625fc4074f2df7610cc4acf46a'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://www.sketchapp.com/appcast3.xml',
          checkpoint: '10704282b94644d2b1dad61eee7cd4f929d06f98b3bffb1dbfacd47a8ec32118'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'

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
