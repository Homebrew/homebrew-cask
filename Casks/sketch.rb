cask 'sketch' do
  version :latest
  sha256 :no_check

  url 'http://bohemiancoding.com/static/download/sketch.zip'
  appcast 'https://www.bohemiancoding.com/sketch/appcast.xml',
          :sha256 => 'dbd6e648552d3fedff548f8458f5c382c606a7e57eaf13bab5a12fe3b580f64d'
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
