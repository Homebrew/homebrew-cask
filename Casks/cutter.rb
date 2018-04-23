cask 'cutter' do
  version '1.4'
  sha256 'd052e519403a14e6cee7182c71ac7f73a788b4bd262972c719cf4c21934d06e0'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/cutter-v#{version}.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: '72f24c97bab229c12258e7ec4d4d01d3f185045bca282df30832feb02261e315'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'cutter.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test.cutter.sfl*',
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
