cask 'ipe' do
  version '7.2.7'
  sha256 '13bd32ecfb77d7c3e073436f4b7e8b8532706a80aeec9575172670dc91908b25'

  # bintray.com/otfried was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg"
  appcast 'http://ipe.otfried.org/',
          checkpoint: 'bd56cea213718b2f59da8fb146cd3f120e70d3b908c7364d230db6235c7b25ae'
  name 'Ipe'
  homepage 'http://ipe.otfried.org/'

  app 'Ipe.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl',
                '~/Library/Saved Application State/org.otfried.ipe.savedState',
              ],
      trash:  [
                '~/.ipe',
                '~/Library/Preferences/org.otfried.ipe.Ipe.plist',
              ]
end
