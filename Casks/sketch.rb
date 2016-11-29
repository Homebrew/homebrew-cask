cask 'sketch' do
  version '41.2'
  sha256 '3ebe19bd1f467b99938f72b174893d3b1966f4d83309c2b1f21d50dca222cd0a'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://www.sketchapp.com/appcast3.xml',
          checkpoint: '57d59242039d1f98de9573eeb80a8b3f632a3382a71d6d6bfa3d588a6d951192'
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
