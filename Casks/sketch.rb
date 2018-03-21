cask 'sketch' do
  version '49.1-51147'
  sha256 '69e21539454f562052c190b3be5b90c6de010af4b9dadecd35c90024a8eef832'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://download.sketchapp.com/sketch-versions.xml',
          checkpoint: '04c7cf8b45b15a915a388b8ff8ca4b546ba6210a16f03447605f95a7e209d7cd'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'

  auto_updates true

  app 'Sketch.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*',
               '~/Library/Application Support/com.bohemiancoding.sketch3',
               '~/Library/Caches/com.bohemiancoding.sketch3',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3',
               '~/Library/Logs/com.bohemiancoding.sketch3',
               '~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist',
               '~/Library/Preferences/com.bohemiancoding.sketch3.plist',
               '~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies',
             ]
end
