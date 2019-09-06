cask 'cutter' do
  version '1.9.0'
  sha256 'f5024f3eec251656ed5c5983fc04a47d0691d585818fc76abb60ae49ef9d3217'

  # github.com/radareorg/cutter was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter-v#{version}-x64.macOS.dmg"
  appcast 'https://github.com/radareorg/cutter/releases.atom'
  name 'Cutter'
  homepage 'https://radare.org/cutter/'

  depends_on macos: '>= :sierra'

  app 'Cutter.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test.cutter.sfl*',
               '~/Library/Preferences/com.cutter.cutter.plist*',
               '~/Library/Preferences/test.cutter.plist',
               '~/Library/Saved Application State/test.cutter.savedState',
             ]
end
