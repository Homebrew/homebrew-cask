cask 'sketch' do
  version '46.1-44463'
  sha256 '47ab4d4da61e616396063643e1ff0f18ee283b4fcedf2fcbcf8fadf9c309f3e9'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://download.sketchapp.com/sketch-versions.xml',
          checkpoint: '095f0eb4e89a46173d8fc1e3e2379035773c175096f6d770d4a03e72cfbf7ff5'
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
