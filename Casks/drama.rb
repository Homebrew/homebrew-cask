cask 'drama' do
  version '1.0.14'
  sha256 'f28a5d05c8c4bba736e8343f115afbde57ed0f295808aa186f37a11b75b2b29d'

  # pixelcut.com/drama was verified as official when first introduced to the cask
  url 'https://www.pixelcut.com/drama/drama.zip'
  appcast 'https://www.pixelcut.com/drama/appcast.xml'
  name 'Drama'
  homepage 'https://www.drama.app/'

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
