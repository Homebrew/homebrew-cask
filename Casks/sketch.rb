cask 'sketch' do
  version '3.6.1'
  sha256 '13c449c0e951178ee8d15b6ea9dd41871f3338b3035b3b628861f084eaa41e9c'

  url 'http://www.sketchapp.com/static/download/sketch.zip'
  appcast "http://www.sketchapp.com/appcast#{version.major}.xml",
          checkpoint: '83deb6732aa8ad708930022c0af31f4ac97ba5c7884a0a40adf8461ca3997173'
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
