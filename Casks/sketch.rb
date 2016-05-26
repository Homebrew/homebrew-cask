cask 'sketch' do
  version '3.8.2'
  sha256 '58f27d1e6d293497a9a6be202bf99a71b2253922e42013a49e389552a0d4a5f8'

  url "http://www.sketchapp.com/download/sketch-#{version}.zip"
  appcast "http://www.sketchapp.com/appcast#{version.major}.xml",
          checkpoint: 'b5bdaca9937568ea9c2c0e6184ee47495b445c7a933433ca84314679b99569d2'
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
