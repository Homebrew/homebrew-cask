cask 'sketch' do
  version '3.5.1'
  sha256 'f5ee1e689c941bf480fcc7a462347ca45d9ec94dde8395e79a879e12882f643e'

  url 'http://www.sketchapp.com/static/download/sketch.zip'
  appcast "http://www.sketchapp.com/appcast#{version.major}.xml",
          checkpoint: 'da40f9c2ade15efd9123ad1f5eea8cf04c372c9524a9525f0db442d53a6c7719'
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
