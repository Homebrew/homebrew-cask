cask 'ipe' do
  version '7.2.11'
  sha256 '4d163c2c29f8a47f737205e9a2fbf41c9423c857a2168447fa776588d3b642ec'

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
