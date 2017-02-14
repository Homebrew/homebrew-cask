cask 'sketch' do
  version '42'
  sha256 'baf7a25c8bbfd39af9a3c3276a324532118e98e8a349d3a3ccbb3be9ec9665ea'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://www.sketchapp.com/appcast3.xml',
          checkpoint: 'd3c85fbe113d0549ecc05f11f5797e77bf3c0938a635e231b7ec98e38fe64cee'
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
