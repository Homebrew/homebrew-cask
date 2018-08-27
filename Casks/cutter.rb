cask 'cutter' do
  version '1.7.1'
  sha256 'f407e87c0cd221e69da8eae94c424d095fec57f7cb6541b7674ca1c6854777fa'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter-v#{version}.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  app 'Cutter.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test.cutter.sfl*',
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
