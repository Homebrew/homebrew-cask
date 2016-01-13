cask 'sketch' do
  version :latest
  sha256 :no_check

  url 'http://bohemiancoding.com/static/download/sketch.zip'
  appcast 'https://www.bohemiancoding.com/sketch/appcast.xml',
          :checkpoint => 'f5d5ba56e17a9d4169d69a68ffe8c47509ff6a7b6073b430271fa0e48706e590'
  name 'Sketch'
  homepage 'https://www.bohemiancoding.com/sketch/'
  license :commercial

  app 'Sketch.app'

  zap :delete => [
                   '~/Library/Application Support/com.bohemiancoding.sketch3',
                   '~/Library/Caches/com.bohemiancoding.sketch3',
                   '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3',
                   '~/Library/Logs/com.bohemiancoding.sketch3',
                   '~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist',
                   '~/Library/Preferences/com.bohemiancoding.sketch3.plist',
                 ]
end
