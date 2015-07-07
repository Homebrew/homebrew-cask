cask :v1 => 'sketch' do
  version :latest
  sha256 :no_check

  url 'http://bohemiancoding.com/static/download/sketch.zip'
  appcast 'https://www.bohemiancoding.com/sketch/appcast.xml'
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
