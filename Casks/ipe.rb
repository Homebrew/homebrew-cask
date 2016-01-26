cask 'ipe' do
  version '7.2.2'
  sha256 'ba4f9aa51a98a5fe6b495b4840ed8d0c8df1d40912b54998866bad2e63031270'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.to_f}/ipe-#{version}-mac.dmg"
  name 'Ipe'
  homepage 'http://ipe.otfried.org'
  license :gpl

  app 'Ipe.app'

  zap delete: [
                '~/.ipe',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl',
                '~/Library/Preferences/org.otfried.ipe.Ipe.plist',
                '~/Library/Saved Application State/org.otfried.ipe.savedState',
              ]
end
