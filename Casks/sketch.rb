cask 'sketch' do
  version '67.1-100412'
  sha256 '36905cd6b86383c24bbd5ff60ef0fba0586869fc5a2489a3d773b0841c9311f4'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://download.sketchapp.com/sketch-versions.xml'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'

  auto_updates true
  depends_on macos: '>= :mojave'

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
