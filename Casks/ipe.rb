cask 'ipe' do
  version '7.2.10'
  sha256 '250ed3ec9a20f630c1cdb53a1ea5650ef80b7eeac903691eb1b8db5b34be9148'

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
