cask 'sketch' do
  version '3.9'
  sha256 '6a320f0468bc0d8802028b6dc09eff255cf03767f2e8d674048300906ad13a87'

  url "http://download.sketchapp.com/sketch-#{version.no_dividers}.zip"
  appcast "http://www.sketchapp.com/appcast#{version.major}.xml",
          checkpoint: '76373c6f54c56a67720872d8aa766a3b175f4422a89f82786d201ae0a59807d7'
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
