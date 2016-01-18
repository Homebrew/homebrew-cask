cask 'sketch' do
  version '3.4.4'
  sha256 '428f5d507f68a7b86cf5d97d3b0fc5c23297cd2048463dbf4e222375154cef79'

  url 'http://www.sketchapp.com/static/download/sketch.zip'
  appcast 'http://www.sketchapp.com/appcast3.xml',
          checkpoint: '0b34bdb96c002b62e83007990ecbb8e4fa69c6dc66dd5c752ad3c54b6818ca3c'
  name 'Sketch'
  homepage 'http://www.sketchapp.com/'
  license :commercial

  app 'Sketch.app'

  zap delete: [
                '~/Library/Application Support/com.bohemiancoding.sketch3',
                '~/Library/Caches/com.bohemiancoding.sketch3',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3',
                '~/Library/Logs/com.bohemiancoding.sketch3',
                '~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist',
                '~/Library/Preferences/com.bohemiancoding.sketch3.plist',
              ]
end
