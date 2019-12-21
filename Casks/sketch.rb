cask 'sketch' do
  version '61.2-89653'
  sha256 'dc15c279c0783b403a298e3b322fd42f74bdded5a3a32cf04a7efd51429ea454'

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
