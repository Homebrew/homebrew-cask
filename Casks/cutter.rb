cask 'cutter' do
  version '1.4'
  sha256 '77b8642cbf58345aece75ddb76683b080a43a7f92c6726d04bdb2d9a4aa52fc2'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: '2b91b1c423d4635e814554c5594104b90c76170719e83f0056d84c246a004184'
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
