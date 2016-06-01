cask 'sketch' do
  version '3.8.3'
  sha256 '8103e15c81968d65c78409a06e95df34ea57299a56c15b063b5e4cb4abb577e9'

  url "http://www.sketchapp.com/download/sketch-#{version}.zip"
  appcast "http://www.sketchapp.com/appcast#{version.major}.xml",
          checkpoint: 'f60562b55de76ab36f57857cd5d0b3d4547a61c19ddc68945ec022a2570a71dd'
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
