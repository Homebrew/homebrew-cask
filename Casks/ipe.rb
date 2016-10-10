cask 'ipe' do
  version '7.2.6'
  sha256 '35e90434d635bb0c085c4447767ad746e61fc276b1f1dbe43a9d671327d5cfa1'

  # bintray.com/otfried was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg"
  name 'Ipe'
  homepage 'http://ipe.otfried.org/'

  app 'Ipe.app'

  zap delete: [
                '~/.ipe',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl',
                '~/Library/Preferences/org.otfried.ipe.Ipe.plist',
                '~/Library/Saved Application State/org.otfried.ipe.savedState',
              ]
end
