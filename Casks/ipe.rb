cask 'ipe' do
  version '7.2.8'
  sha256 '478d5a2cee3c1760d9b402e294c021743fe667cd405007b44f98d6179c2d59dd'

  # bintray.com/otfried was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg"
  appcast 'https://ipe.otfried.org/'
  name 'Ipe'
  homepage 'https://ipe.otfried.org/'

  depends_on macos: '>= :yosemite'

  app 'Ipe.app'

  zap trash: [
               '~/.ipe',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl*',
               '~/Library/Preferences/org.otfried.ipe.Ipe.plist',
               '~/Library/Saved Application State/org.otfried.ipe.savedState',
             ]
end
