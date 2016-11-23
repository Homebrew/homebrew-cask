cask 'sketch' do
  version '41.1'
  sha256 'ad0cf651562af5f6358c0c03165d196c2d08fa4c08927c1d4d3b8602dafc890b'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://www.sketchapp.com/appcast3.xml',
          checkpoint: 'abbc2e57da756e05cac6977268aeb35a85bd164654bbecef692bde5422272c6e'
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
