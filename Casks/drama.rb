cask 'drama' do
  version '1.0.23'
  sha256 '8860d352a55fceff579244acec294988d22b05aab333e81a1d03f0eb128b8b4d'

  # pixelcut.com/drama was verified as official when first introduced to the cask
  url 'https://www.pixelcut.com/drama/drama.zip'
  appcast 'https://www.pixelcut.com/drama/appcast.xml'
  name 'Drama'
  homepage 'https://www.drama.app/'

  depends_on macos: '>= :high_sierra'

  app 'Drama.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pixelcut.drama.sfl*',
               '~/Library/Application Support/com.pixelcut.drama',
               '~/Library/Preferences/com.pixelcut.drama.plist',
               '~/Library/Caches/com.apple.nsurlsessiond/Downloads/com.pixelcut.drama',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.pixelcut.drama',
               '~/Library/Caches/com.pixelcut.drama',
             ]
end
