cask 'ipe' do
  version '7.2.3'
  sha256 '20d28288af79e5b8e55a2f4404dcf9fff9706d1b3d9a4d39cf263069419bfcec'

  # bintray.com/otfried was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.to_f}/ipe-#{version}-mac.dmg"
  name 'Ipe'
  homepage 'http://ipe.otfried.org/'
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
