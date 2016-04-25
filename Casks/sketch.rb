cask 'sketch' do
  version '3.7.2'
  sha256 'cf07466d5c8aaffb3e0c6d6242c3f2367b4f84d293d01064e1a7ee1a503c3429'

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
