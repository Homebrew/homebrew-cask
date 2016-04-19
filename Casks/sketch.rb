cask 'sketch' do
  version '3.7.1'
  sha256 'a6aae446bb5b0a1ac883f55ef01a5e32ef7dc21000b861f114200025cfc96e8d'

  url 'http://www.sketchapp.com/static/download/sketch.zip'
  appcast "http://www.sketchapp.com/appcast#{version.major}.xml",
          checkpoint: 'b8181f62ece181db9c1d4558cbf0907e35d70dad0c82ddc297d45ad0572fd688'
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
