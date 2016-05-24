cask 'sketch' do
  version '3.8.1'
  sha256 '150afb85c8ddd0574e9ccc26d09bad6bf085ce628466a81b9ca60f9652a8b75a'

  url "http://www.sketchapp.com/download/sketch-#{version}.zip"
  appcast "http://www.sketchapp.com/appcast#{version.major}.xml",
          checkpoint: 'ba236545834ff4f7810fc9c11c4ba2cd9e68cfeddb8c7500c3d11235ff56f039'
  name 'Sketch'
  homepage 'http://www.sketchapp.com/'
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
