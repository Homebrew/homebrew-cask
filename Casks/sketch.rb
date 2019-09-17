cask 'sketch' do
  version '58-84663'
  sha256 'dd3a102927291a0f0ad33224172805cc7b6a8979e9a18b43b667517cda11ca2c'

  url "https://download.sketchapp.com/sketch-#{version}.zip"
  appcast 'https://download.sketchapp.com/sketch-versions.xml'
  name 'Sketch'
  homepage 'https://www.sketchapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

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
