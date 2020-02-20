cask 'ipe' do
  version '7.2.13'
  sha256 '3003343719f3b17f32a321fff64f10e60e92b4d9550e136c65838c761c23fe55'

  # bintray.com/otfried was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg"
  appcast 'http://ipe.otfried.org/'
  name 'Ipe'
  homepage 'http://ipe.otfried.org/'

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
