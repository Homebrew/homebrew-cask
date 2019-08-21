cask 'drama' do
  version :latest
  sha256 :no_check

  # pixelcut.com/drama was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/drama/drama.zip"
  name 'Drama'
  homepage 'https://www.drama.app'

  app 'Drama.app'

  zap trash: [
        '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.pixelcut.drama.sfl*',
        '~/Library/Application Support/com.pixelcut.drama',
        '~/Library/Preferences/com.pixelcut.drama.plist',
        '~/Library/Caches/com.apple.nsurlsessiond/Downloads/com.pixelcut.drama',
        '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.pixelcut.drama',
        '~/Library/Caches/com.pixelcut.drama'
      ]
end
