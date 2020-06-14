cask 'ipe' do
  version '7.2.19'
  sha256 '078ad619278aefe98c7b434df99bdc0871707ad6085dbe0a0ea7d5c3cbf629c4'

  # bintray.com/otfried/ was verified as official when first introduced to the cask
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
