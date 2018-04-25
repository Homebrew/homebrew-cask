cask 'cutter' do
  version '1.4'
  sha256 '78cefb1b0f28f76d749694ba3e953c8a64b0505c7788aa89569bb6039711d200'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter-v#{version}.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: '9a701c98fea005734f0c3b28edf585bb9ce09eae138531c1aeb13e61ab42e1c5'
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
