cask 'cutter' do
  version '1.4'
  sha256 '77b8642cbf58345aece75ddb76683b080a43a7f92c6726d04bdb2d9a4aa52fc2'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom',
          checkpoint: '8709e44dc6961c326f8f71d641ccbe5c4f078f81a4667e1ab0e8788e50e0b967'
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
