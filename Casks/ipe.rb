cask 'ipe' do
  version '7.2.4'
  sha256 'a38199ad7c3f9e0f433b6985a8e9be604cde724377ac87fcea8781fc2c8b1e0a'

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
